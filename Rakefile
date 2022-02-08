# frozen_string_literal: true

task :test do
  sh 'rspec'
end

task :rubocop do
  sh 'rubocop'
end

task :build do
  sh 'gem build dfe_reference_data.gemspec'
end

task install: [:build] do
  sh 'gem install dfe_reference_data-0.0.0.gem'
end
