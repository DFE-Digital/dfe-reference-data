require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

task :rubocop do
  sh 'bundle exec rubocop'
end

task :rubocop_fix do
  sh 'bundle exec rubocop -A'
end
