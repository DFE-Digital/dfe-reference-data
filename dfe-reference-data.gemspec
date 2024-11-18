require_relative 'lib/dfe/reference_data/version'

require 'English'
Gem::Specification.new do |s|
  s.required_ruby_version = Gem::Requirement.new('>= 3.1.0')
  s.name          = 'dfe-reference-data'
  s.version       = DfE::ReferenceData::VERSION
  s.summary       = 'Reference data for Department for Education services'
  s.description   = 'A toolkit for accessing, and version-controlled sources for, reference data'
  s.authors       = ['Alaric Snell-Pym']
  s.email         = 'alaric.snell-pym@digital.education.gov.uk'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  s.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  s.bindir        = 'exe'
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency('awesome_print')
  s.add_development_dependency('google-cloud-bigquery', '~> 1.39')
  s.add_development_dependency('rake', '~> 12.0')
  s.add_development_dependency('rspec', '~> 3.0')
  s.add_development_dependency('rubocop', '~> 1.25')
  s.add_development_dependency('rubocop-rspec', '~> 2.8')
  s.add_development_dependency('sqlite3', '~> 1.4')

  s.add_dependency 'activesupport'
  s.add_dependency 'tzinfo'
  s.metadata['rubygems_mfa_required'] = 'true'
end
