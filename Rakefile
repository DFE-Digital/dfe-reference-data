# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

require_relative 'sbin/bigquery/importer'
require_relative 'lib/dfe/reference_data'

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

BIGQUERY_PROJECT = 'rugged-abacus-218110'
BIGQUERY_CREDENTIALS_FILE_PATH = '../dfe-reference-data_bigquery_api_key.json'

BIGQUERY_DATASET = 'dfe_reference_data_dev'

BIGQUERY_TABLES = [
  ['qualifications', DfE::ReferenceData::Qualifications::QUALIFICATIONS],
  ['degree_grades', DfE::ReferenceData::Degrees::GRADES],
  ['degree_institutions', DfE::ReferenceData::Degrees::INSTITUTIONS],
  ['degree_subjects', DfE::ReferenceData::Degrees::SUBJECTS],
  ['degree_types', DfE::ReferenceData::Degrees::TYPES_INCLUDING_GENERICS]
].freeze

desc 'Insert records into BigQuery tables from the reference data lists'
task :update_bigquery_tables do
  version = `bundle exec ruby -e 'puts DfE::ReferenceData::VERSION'`.chomp
  commit = `git rev-parse HEAD`.chomp

  DfE::ReferenceData::BigQuery.update_tables(BIGQUERY_PROJECT,
                                             JSON.parse(File.read(BIGQUERY_CREDENTIALS_FILE_PATH)),
                                             BIGQUERY_DATASET,
                                             BIGQUERY_TABLES,
                                             version,
                                             commit)
end
