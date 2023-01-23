# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

require_relative 'lib/dfe/reference_data'
require_relative 'lib/dfe/reference_data/bigquery/importer'

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

  sh 'git', 'push', '--tags', 'origin', 'main'

  puts "Release #{v_version} has been pushed. Please mark a Github release by visiting https://github.com/DFE-Digital/dfe-reference-data/releases/new?tag=#{v_version}"
end

# Update the docs in docs/bigquery.md to reflect any changes to this list:

BIGQUERY_TABLES = [
  ['qualifications', DfE::ReferenceData::Qualifications::QUALIFICATIONS],
  ['degree_grades', DfE::ReferenceData::Degrees::GRADES],
  ['degree_institutions', DfE::ReferenceData::Degrees::INSTITUTIONS],
  ['degree_subjects', DfE::ReferenceData::Degrees::SUBJECTS_INCLUDING_GENERICS],
  ['degree_types', DfE::ReferenceData::Degrees::TYPES_INCLUDING_GENERICS],
  ['itt_subjects', DfE::ReferenceData::ITT::SUBJECTS],
  ['itt_incentives', DfE::ReferenceData::ITT::INCENTIVES],
  ['itt_categories', DfE::ReferenceData::ITT::CATEGORIES],
  ['itt_publish_categories', DfE::ReferenceData::ITT::PUBLISH_CATEGORIES],
  ['itt_register_categories', DfE::ReferenceData::ITT::REGISTER_CATEGORIES],
  ['itt_tad_categories', DfE::ReferenceData::ITT::TAD_CATEGORIES],
  ['itt_cycles', DfE::ReferenceData::ITT::CYCLES],
  ['ead_disabilities_and_health_conditions', DfE::ReferenceData::EqualityAndDiversity::DISABILITIES_AND_HEALTH_CONDITIONS]
].freeze

desc 'Insert records into BigQuery tables from the reference data lists'
task :update_bigquery_tables do
  DfE::ReferenceData::BigQuery::Config.configure do |config|
    config.project = ENV['BIGQUERY_PROJECT'] || 'rugged-abacus-218110'
    config.dataset = ENV['BIGQUERY_DATASET'] || 'dfe_reference_data_dev'
    config.tables = BIGQUERY_TABLES
    config.version = `bundle exec ruby -e 'puts DfE::ReferenceData::VERSION'`.chomp
    config.commit = `git rev-parse HEAD`.chomp

    # Suffix table names with the major version number, so multiple release
    # branches can coexist peacefully
    major_version = (config.version.split '.')[0]
    config.table_name_suffix = "_v#{major_version}"

    puts "Updating #{config.project}.#{config.dataset} with version #{major_version}:"
  end

  DfE::ReferenceData::BigQuery.update_tables
end
