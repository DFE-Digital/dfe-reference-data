# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

require 'rubocop/rake_task'

RuboCop::RakeTask.new

task default: %i[spec rubocop]

desc 'Prepare a new version for release, version can be major, minor, patch or x.y.z (as per gem-release gem)'
task :prepare_release, %i[version] do |_, args|
  bump_version = args.fetch(:version)

  current_branch = `git branch --show-current`.chomp
  raise 'could not get current branch' if current_branch.empty?

  sh 'git', 'checkout', '-b', 'new-release' if current_branch == 'main'

  sh 'gem', 'bump', '-v', bump_version, '--no-commit', '--file', 'lib/dfe/reference_data/version.rb'

  version = `bundle exec ruby -e 'puts DfE::ReferenceData::VERSION'`.chomp
  raise 'could not retrieve version' if version.empty?

  v_version = "v#{version}"

  sh 'bundle', 'exec', 'github_changelog_generator', '--no-verbose', '--user', 'DFE-Digital', '--project', 'dfe-reference-data', '--output', 'docs/CHANGELOG.md', '--future-release', v_version

  sh 'git', 'commit', '-a', '-m', v_version

  sh 'gem', 'tag'

  puts "Ready for release #{v_version}. If you're happy with it and the CHANGELOG.md, you can push it with:",
       '',
       '  git push --tags origin'
end
