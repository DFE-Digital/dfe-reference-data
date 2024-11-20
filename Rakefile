# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

require_relative 'lib/dfe/reference_data'
require_relative 'lib/dfe/reference_data/bigquery/importer'
require_relative 'lib/dfe/reference_data/bigquery/converter'

RSpec::Core::RakeTask.new(:spec)

require 'rubocop/rake_task'

RuboCop::RakeTask.new

task default: %i[rubocop install spec]

desc 'Generate lib/dfe/reference_data/cah.rb from downloaded CSVs'
task :import_cah_mappings do
  sh 'bin/import_cah_mappings'
end

desc 'Prepare a new version for release, version can be major, minor, patch or x.y.z (as per gem-release gem)'
task :prepare_release, %i[version] do |_, args|
  bump_version = args.fetch(:version)

  sh 'gem', 'bump', '-v', bump_version, '--no-commit', '--file', 'lib/dfe/reference_data/version.rb'

  version = `bundle exec ruby -e 'puts DfE::ReferenceData::VERSION'`.chomp
  raise 'could not retrieve version' if version.empty?

  v_version = "v#{version}"

  sh 'bundle', 'exec', 'github_changelog_generator', '--no-verbose', '--user', 'DFE-Digital', '--project', 'dfe-reference-data', '--output', 'CHANGELOG.md', '--future-release', v_version

  puts <<~EOMESSAGE
    Release #{v_version} is almost ready! Before you push:

    - Check that the CHANGELOG.md has no empty sections with no changes listed,
      duplicate version numbers (e.g. two v1.5.1 entries) or non-version entries
      (e.g. "push"). There should also only typically be a section added for the
      latest version being cut, and no changes to previous entries.

        git show -- CHANGELOG.md

  EOMESSAGE
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
  ['degree_types', DfE::ReferenceData::Degrees::ALL_TYPES],
  ['itt_subjects', DfE::ReferenceData::ITT::SUBJECTS],
  ['itt_incentives', DfE::ReferenceData::ITT::INCENTIVES],
  ['itt_categories', DfE::ReferenceData::ITT::CATEGORIES],
  ['itt_publish_categories', DfE::ReferenceData::ITT::PUBLISH_CATEGORIES],
  ['itt_register_categories', DfE::ReferenceData::ITT::REGISTER_CATEGORIES],
  ['itt_tad_categories', DfE::ReferenceData::ITT::TAD_CATEGORIES],
  ['itt_cycles', DfE::ReferenceData::ITT::CYCLES],
  ['ead_disabilities_and_health_conditions', DfE::ReferenceData::EqualityAndDiversity::DISABILITIES_AND_HEALTH_CONDITIONS],
  ['cah_categories_l1', DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L1],
  ['cah_categories_l2', DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L2],
  ['cah_categories_l3', DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L3],
  ['hecos_cah_subject_mappings', DfE::ReferenceData::CommonAggregationHierarchy::HECOS_CAH_SUBJECT_MAPPINGS],
  ['bank_holidays', DfE::ReferenceData::BankHolidays::BANK_HOLIDAYS]
].freeze

desc 'Insert records into BigQuery tables from the reference data lists'
task :update_bigquery_tables do
  DfE::ReferenceData::BigQuery::Config.configure do |config|
    config.project = ENV['BIGQUERY_PROJECT'] || 'cross-teacher-services'
    config.dataset = ENV['BIGQUERY_DATASET'] || 'dfe_reference_data_dev'
    config.tables = BIGQUERY_TABLES
    config.version = `bundle exec ruby -e 'puts DfE::ReferenceData::VERSION'`.chomp
    config.commit = `git rev-parse HEAD`.chomp

    # Suffix table names with '_latest' to push to the same table
    config.table_name_suffix = '_latest'

    puts "Updating #{config.project}.#{config.dataset} with version #{config.version}:"
  end

  DfE::ReferenceData::BigQuery.update_tables
end

desc 'Convert reference data to SQLite'
task :convert_to_sqlite do
  version = DfE::ReferenceData::VERSION
  output_file = File.join(__dir__, 'reference_data.sqlite3')
  versioned_output_file = output_file.sub('.sqlite3', "_v#{version}.sqlite3")
  DfE::ReferenceData::BigQuery::Converter.convert_to_sqlite(versioned_output_file, BIGQUERY_TABLES)
end
