# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'google/cloud/bigquery'
require_relative 'lib/dfe/reference_data'
require_relative 'lib/dfe/reference_data/qualifications'
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

def update_reference_list_into_bigquery_table(dataset, table_name, list)
  table = dataset.table ("qualifications")
  if table != nil
    table.delete
  end
  # FIXME Generate schema from the actual data rather than hardcoded
  table = dataset.create_table "qualifications" do |schema|
    schema.string "id", mode: :required
    schema.string "name", mode: :required
    schema.string "level", mode: :required
    schema.string "suggestion_synonyms", mode: :repeated
    schema.string "match_synonyms", mode: :repeated
    schema.string "degree", mode: :nullable
    schema.string "hint", mode: :nullable
  end
  puts "table.exists? 1: #{table.exists?} #{table.inspect}"
  sleep 10
  table = dataset.table "qualifications"
  puts "table.exists? 2: #{table.exists?} #{table.inspect}"

  # Do the actual bulk transfer
  rows = DfE::ReferenceData::Qualifications::QUALIFICATIONS.all.map &:to_h
  response = table.insert rows

  # FIXME Collect failures from the entire run and decide how to log them
  puts "Insert results: #{response.insert_count} records inserted, #{response.error_count} records failed"
  puts "(#{response.error_rows}"
  puts ""
  puts "ERRORS:"
  puts ""
  puts "#{response.insert_errors})"
  unless response.success?
    raise "Insertion failed"
  end
end

desc 'Push stuff into bigquery FIXME write more later'
task :update_bigquery do

  # FIXME Feed in configuration from somewhere nicer
  project = Google::Cloud::Bigquery.new(
    project: "rugged-abacus-218110",
    # dfe-reference-data-dev is the user name
    credentials: JSON.parse(File.read("../dfe-reference-data_bigquery_api_key.json")),
    retries: 10,
    timeout: 10
  )

  dataset = project.dataset "dfe_reference_data_dev"

  # FIXME Loop over a list of lists to map into tables
  update_reference_list_into_bigquery_table(dataset, "qualifications", DfE::ReferenceData::Qualifications::QUALIFICATIONS)
end
