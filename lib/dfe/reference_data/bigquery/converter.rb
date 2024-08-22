require_relative '../helpers/sqlite_conversion_helper'

module DfE
  module ReferenceData
    module BigQuery
      class Converter
        extend DfE::ReferenceData::Helpers::SQLiteConversionHelper

        class << self
          def convert_to_sqlite(output_file, tables)
            versioned_output_file = append_version_to_filename(output_file, DfE::ReferenceData::VERSION)

            db = SQLite3::Database.new(versioned_output_file)

            tables.each do |(table_name, list)|
              create_table_and_insert_records(db, table_name, list)
            end

            db.close
            puts "Data successfully converted to #{output_file}"
          rescue SQLite3::Exception => e
            raise StandardError, "SQLite3 error during conversion: #{e.message}"
          ensure
            db&.close
          end

          def append_version_to_filename(output_file, version)
            extname = File.extname(output_file)
            basename = File.basename(output_file, extname)
            dirname = File.dirname(output_file)
            "#{dirname}/#{basename}_#{version}#{extname}"
          rescue StandardError => e
            raise StandardError, "Error generating versioned filename: #{e.message}"
          end

          def create_table_and_insert_records(db, table_name, list)
            create_table_sql = generate_create_table_sql(table_name, list.schema)
            db.execute(create_table_sql)

            db.transaction do
              insert_records(db, table_name, list.all)
            end

            create_indexes(db, table_name, list.schema)
          rescue StandardError => e
            raise StandardError, "Error generating CREATE TABLE SQL for #{table_name}: #{e.message}"
          end

          def insert_records(db, table_name, records)
            records.each do |record|
              insert_record(db, table_name, record)
            end
          rescue StandardError => e
            raise StandardError, "Error inserting records into #{table_name}: #{e.message}"
          end

          def insert_record(db, table_name, record)
            columns = record.keys.map(&:to_s)
            placeholders = (['?'] * columns.size).join(',')
            insert_sql = "INSERT INTO #{table_name} (#{columns.join(',')}) VALUES (#{placeholders})"
            values = columns.map { |col| convert_value_for_sqlite(record[col.to_sym]) }
            db.execute(insert_sql, values)
          rescue StandardError => e
            raise StandardError, "Error converting value for SQLite in #{table_name}: #{e.message}"
          end

          def generate_create_table_sql(table_name, schema)
            columns = schema.map do |field_name, field_schema|
              field_type = field_schema.is_a?(Hash) ? field_schema[:kind] : field_schema
              "#{field_name} #{convert_to_sqlite_type(field_type)}"
            end
            "CREATE TABLE IF NOT EXISTS #{table_name} (#{columns.join(', ')})"
          rescue StandardError => e
            raise StandardError, "Error generating CREATE TABLE SQL for #{table_name}: #{e.message}"
          end

          def create_indexes(db, table_name, schema)
            index_columns = schema.select { |_field_name, field_schema| %i[string integer].include?(field_schema) }

            index_columns.each_key do |column|
              create_index_sql = "CREATE INDEX IF NOT EXISTS idx_#{table_name}_#{column} ON #{table_name}(#{column})"
              db.execute(create_index_sql)
            end
          rescue StandardError => e
            raise StandardError, "Error creating index for #{table_name}: #{e.message}"
          end
        end
      end
    end
  end
end
