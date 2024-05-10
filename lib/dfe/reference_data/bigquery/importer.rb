require 'google/cloud/bigquery'
require 'active_support'

# Although this file is included in the gem, it is not intended to be used by
# users of the gem and the gem does not declare google/cloud/bigquery as a
# runtime dependency.

# This file is referenced only at build time, from the corresponding rspecs and
# the Rakefile.

module DfE
  module ReferenceData
    module BigQuery
      class Config
        # Require configuration
        cattr_accessor :project, :credentials, :dataset, :tables, :version, :commit

        # Optional, overridable, configuration
        cattr_accessor :credentials, :max_retry_sleep, :bigquery_retries, :bigquery_timeout, :table_name_suffix
        self.credentials = nil
        self.max_retry_sleep = 60 # seconds
        self.bigquery_retries = 10
        self.bigquery_timeout = 10
        self.table_name_suffix = ''

        def self.configure
          yield(self)
        end

        # Access to class variable @@credentials here is deliberate, to cache this global configuration variable

        # rubocop:disable Style/ClassVars
        def self.obtain_credentials
          credential_file_name = case @@project
                                 when 'rugged-abacus-218110'
                                   'dfe-reference-data_bigquery_api_key.json'
                                 when 'cross-teacher-services'
                                   'dfe-reference-data_bigquery_api_key_cross_teacher_services.json'
                                 else
                                   raise StandardError, "Unsupported project: #{@@project}"
                                 end

          expanded_path = File.expand_path(credential_file_name.to_s, __dir__)
          raise StandardError, "No BigQuery credentials were found for project #{@@project}" unless File.file?(expanded_path)

          @@credentials = JSON.parse(File.read(expanded_path))
          @@credentials
        end
        # rubocop:enable Style/ClassVars
      end

      # This class is just a stateless bag of methods, splitting it up will not simplify anything!
      class << self
        def config
          DfE::ReferenceData::BigQuery::Config
        end

        def update_tables
          project = Google::Cloud::Bigquery.new(
            project: config.project,
            credentials: config.obtain_credentials,
            retries: config.bigquery_retries,
            timeout: config.bigquery_timeout
          )

          dataset = project.dataset config.dataset

          # There is an asynchronous process in BigQuery between table creation
          # and table being ready to use, so we start that for all tables before
          # we start trying to use the tables - as retrying and waiting until
          # the first table becomes ready can happen while other tables we will
          # look at later are also becoming ready.

          create_tables(dataset)
          populate_tables(dataset)
        end

        private

        def create_tables(dataset)
          config.tables.each do |entry|
            (table_name_prefix, list) = entry
            table_name = table_name_prefix + config.table_name_suffix
            puts "Creating #{table_name}..."
            table = create_bigquery_table(dataset, table_name, list)
            setup_bigquery_table_metadata(table, table_name, list, config.version, config.commit)
          end
        end

        def populate_tables(dataset)
          config.tables.each do |entry|
            (table_name_prefix, list) = entry
            table_name = table_name_prefix + config.table_name_suffix
            puts "Populating #{table_name}..."
            update_reference_list_into_bigquery_table_with_retries(dataset, table_name, list)
          end
        end

        def kind(field_schema)
          case field_schema
          when Hash
            field_schema[:kind]
          else
            field_schema
          end
        end

        # rubocop:disable Lint/DuplicateBranch
        # rubocop:disable Metrics/CyclomaticComplexity
        def bigquery_schema_create_field(schema, name, description, field_schema, mode)
          case kind(field_schema)
          when :code
            schema.string name, description: description, mode: mode
          when :string
            schema.string name, description: description, mode: mode
          when :symbol
            schema.string name, description: description, mode: mode
          when :boolean
            schema.boolean name, description: description, mode: mode
          when :integer
            schema.integer name, description: description, mode: mode
          when :real
            schema.float name, description: description, mode: mode
          when :datetime
            schema.datetime name, description: description, mode: mode
          when :daterange
            schema.record name, description: description, mode: mode do |recordschema|
              recordschema.date 'begin', mode: :required
              recordschema.date 'end', mode: :required
            end
          else
            raise "Schema error: #{kind}"
          end
        end
        # rubocop:enable Lint/DuplicateBranch
        # rubocop:enable Metrics/CyclomaticComplexity

        def bigquery_schema_create_map_field(schema, field_name, description, key_schema, value_schema)
          schema.record field_name, description: description, mode: :repeated do |fields|
            bigquery_schema_create_field(fields, 'key', nil, key_schema, :required)
            bigquery_schema_create_field(fields, 'value', nil, value_schema, :required)
          end
        end

        def bigquery_schema_create_field_from_schema(schema, field_name, description, field_schema)
          case field_schema
          when Symbol
            bigquery_schema_create_field(schema, field_name, description, field_schema, :required)
          when Hash
            case field_schema[:kind]
            when :array
              bigquery_schema_create_field(schema, field_name, description, field_schema[:element_schema], :repeated)
            when :optional
              bigquery_schema_create_field(schema, field_name, description, field_schema[:schema], :nullable)
            when :map
              bigquery_schema_create_map_field(schema, field_name, description, field_schema[:key], field_schema[:value])
            when :code
              bigquery_schema_create_field(schema, field_name, description, :string, :required)
            else
              raise "Complex schema kind error: #{field_schema[:kind]}"
            end
          else
            raise "Complex schema type error: #{field_schema}"
          end
        end

        def create_bigquery_table(dataset, table_name, list)
          table = dataset.table(table_name)

          list_schema = list.schema

          raise "Cannot create a bigquery table for a list without a schema (such as #{table_name})" unless list_schema

          if !table.nil? && table.exists?
            # Delete previous incarnation
            table.delete
          end

          dataset.create_table table_name do |schema|
            list_schema.each_pair do |field_name_symbol, field_schema|
              field_name = field_name_symbol.to_s
              bigquery_schema_create_field_from_schema(schema, field_name, list.field_description(field_name_symbol), field_schema)
            end
          end
        end

        def setup_bigquery_table_metadata(table, _table_name, list, version, commit)
          descr = 'Automatically populated from dfe-reference-data'
          descr = list.list_description if list.list_description
          descr = "#{descr} (see #{list.list_docs_url} for more details)" if list.list_docs_url
          table.description = descr
          table.labels = {
            autogenerated: true,
            dfe_reference_data_version: version.gsub('.', '_'),
            dfe_reference_data_commit_hash: commit
          }
        end

        def convert_value_to_bigquery_form(value)
          case value
          when Array
            value.map { |x| convert_value_to_bigquery_form(x) }
          when Hash
            value.to_a.map do |x|
              (key, value) = x
              {
                key: convert_value_to_bigquery_form(key),
                value: convert_value_to_bigquery_form(value)
              }
            end
          when Range
            {
              begin: convert_value_to_bigquery_form(value.begin),
              end: convert_value_to_bigquery_form(value.end)
            }
          else
            value
          end
        end

        def convert_record_values_to_bigquery_form!(record)
          result = {}
          record.each_entry do |key, value|
            result[key] = convert_value_to_bigquery_form(value)
          end

          result
        end

        def convert_list_to_bigquery_format(list)
          rows = list.all.map(&:to_h)

          # Process fields that need converting
          rows.map! do |record|
            convert_record_values_to_bigquery_form!(record)
          end

          rows
        end

        def update_reference_list_into_bigquery_table(dataset, table_name, list)
          table = dataset.table table_name

          # NOTE: TO FUTURE SELF: If we start to deal with very large reference
          # lists we might start to hit BigQuery API limits documented here:
          # https://cloud.google.com/bigquery/quotas#streaming_inserts. If so,
          # we may need to add code to do this in batches - see, eg
          # https://github.com/DFE-Digital/dfe-analytics/pull/45/files

          # Obtain the records
          rows = convert_list_to_bigquery_format(list)

          # Do the actual bulk transfer
          response = table.insert rows

          puts "Table '#{table_name}' insert results: #{response.insert_count} records inserted, #{response.error_count} records failed"
          return if response.success?

          # Limit to at most five errors displayed, as they're usually just boring after that
          response.insert_errors[0, 5].each do |error|
            puts "Row: #{error.row}"
            puts "Failed with errors: #{error.errors}"
          end
          raise 'Insertion failed'
        end

        def update_reference_list_into_bigquery_table_with_retries(dataset, table_name, list)
          sleep_time = 1
          loop do
            begin
              table = dataset.table table_name
              if table.exists?
                update_reference_list_into_bigquery_table(dataset, table_name, list)
                return
              else
                puts "Table readiness check failed as it doesn't exist yet, sleeping and retrying..."
              end
            rescue Google::Cloud::NotFoundError => e
              puts "Table insert attempt failed with #{e}, sleeping and retrying..."
            end
            sleep sleep_time
            sleep_time *= 2
            sleep_time = config.max_retry_sleep if sleep_time > config.max_retry_sleep
          end
        end
      end
    end
  end
end
