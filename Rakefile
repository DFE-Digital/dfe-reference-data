# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

require 'google/cloud/bigquery'
require_relative 'lib/dfe/reference_data/all_lists'
require 'debug'

RSpec::Core::RakeTask.new(:spec)

require 'rubocop/rake_task'

RuboCop::RakeTask.new

task default: %i[spec rubocop]

desc 'Prepare a new version for release, version can be major, minor, patch or x.y.z (as per gem-release gem)'
task :prepare_release, %i[version] do |_, args|
  bump_version = args.fetch(:version)

  sh 'gem', 'bump', '-v', bump_version, '--no-commit', '--file', 'lib/dfe/reference_data/version.rb'

  version = `bundle exec ruby -e 'puts DfE::ReferenceData::VERSION'`.chomp
  raise 'could not retrieve version' if version.empty?

  v_version = "v#{version}"

  sh 'bundle', 'exec', 'github_changelog_generator', '--no-verbose', '--user', 'DFE-Digital', '--project', 'dfe-reference-data', '--output', 'CHANGELOG.md', '--future-release', v_version
end

desc 'Commit current changes (eg, the changes made by prepare_release and any upgrade notes written to README.md), tag, and push to origin'
task :tag_and_push_release do
  version = `bundle exec ruby -e 'puts DfE::ReferenceData::VERSION'`.chomp
  raise 'could not retrieve version' if version.empty?

  v_version = "v#{version}"

  sh 'git', 'commit', '-a', '-m', v_version

  sh 'gem', 'tag'

  sh 'git', 'push', '--tags', 'origin'

  puts "Release #{v_version} has been pushed. Please mark a Github release by visiting https://github.com/DFE-Digital/dfe-reference-data/releases/new?tag=#{v_version}"
end

def create_bigquery_table(dataset, table_name, list)
  table = dataset.table(table_name)
  table&.delete

  list_schema = list.schema

  table = dataset.create_table table_name do |schema|
    list_schema.each_pair do |field_name, field_schema|
      puts "SCHEMA: #{field_name} #{field_schema}"
      case field_schema
      when :string
        schema.string field_name, mode: :required
      when :symbol
        schema.string field_name, mode: :required
      else
        if field_schema.is_a?(Hash)
          case field_schema[:kind]
          when :array
            case field_schema[:element_schema]
            when :string
              schema.string field_name, mode: :repeated
            when :symbol
              schema.string field_name, mode: :repeated
            else
              raise "Array schema error: #{field_schema}"
            end
          when :optional
            case field_schema[:schema]
            when :string
              schema.string field_name, mode: :nullable
            when :symbol
              schema.string field_name, mode: :nullabla
            else
              raise "Optional schema error: #{field_schema}"
            end
          end
        else
          raise "Schema error: #{field_schema}"
        end
      end
    end
  end
end

def update_reference_list_into_bigquery_table(dataset, table_name, list)
  table = dataset.table table_name

  # Do the actual bulk transfer
  rows = list.all.map(&:to_h)
  response = table.insert rows

  # FIXME: Collect failures from the entire run and decide how to log them
  puts "Table '#{table_name}' insert results: #{response.insert_count} records inserted, #{response.error_count} records failed"
  unless response.success?
    response.insert_errors.each do |row|
      puts "Error: #{row}"
    end
    raise 'Insertion failed' unless response.success?
  end
end

BIGQUERY_PROJECT = 'rugged-abacus-218110'
BIGQUERY_CREDENTIALS_FILE_PATH = '../dfe-reference-data_bigquery_api_key.json'
BIGQUERY_RETRIES = 10
BIGQUERY_TIMEOUT = 10

BIGQUERY_DATASET = 'dfe_reference_data_dev'

BIGQUERY_TABLES = [
  ['qualifications', DfE::ReferenceData::Qualifications::QUALIFICATIONS],
#  ['degree_grades', DfE::ReferenceData::Degrees::GRADES],
#  ['degree_institutions', DfE::ReferenceData::Degrees::INSTITUTIONS],
#  ['degree_subjects', DfE::ReferenceData::Degrees::SUBJECTS],
#  ['degree_types', DfE::ReferenceData::Degrees::TYPES_INCLUDING_GENERICS],
].freeze

desc 'Push stuff into bigquery FIXME write more later'
task :create_bigquery_tables do
  project = Google::Cloud::Bigquery.new(
    project: BIGQUERY_PROJECT,
    # dfe-reference-data-dev is the user name
    credentials: JSON.parse(File.read(BIGQUERY_CREDENTIALS_FILE_PATH)),
    retries: BIGQUERY_RETRIES,
    timeout: BIGQUERY_TIMEOUT
  )

  dataset = project.dataset BIGQUERY_DATASET

  BIGQUERY_TABLES.each do |entry|
    (table_name, list) = entry
    create_bigquery_table(dataset, table_name, list)
  end
end

desc 'Push stuff into bigquery FIXME write more later'
task :update_bigquery_tables do
  project = Google::Cloud::Bigquery.new(
    project: BIGQUERY_PROJECT,
    # dfe-reference-data-dev is the user name
    credentials: JSON.parse(File.read(BIGQUERY_CREDENTIALS_FILE_PATH)),
    retries: BIGQUERY_RETRIES,
    timeout: BIGQUERY_TIMEOUT
  )

  dataset = project.dataset BIGQUERY_DATASET

  BIGQUERY_TABLES.each do |entry|
    (table_name, list) = entry
    update_reference_list_into_bigquery_table(dataset, table_name, list)
  end
end
