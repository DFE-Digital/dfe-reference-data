# frozen_string_literal: true

require 'English'
Gem::Specification.new do |s|
  s.required_ruby_version = '>= 3.0.0'
  s.name          = 'dfe_reference_data'
  s.version       = '0.0.0'
  s.summary       = 'Reference data for Department for Education service implementation'
  s.description   = 'An interface for accessing, and version-controlled sources for, reference data such as lists of qualifications, degree issuing bodies, etc'
  s.authors       = ['Alaric Snell-Pym']
  s.email         = 'alaric.snell-pym@digital.education.gov.uk'
  s.files         = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.executables   = ['export_reference_json']
  s.require_paths = ['lib']
  #  s.homepage    = ''
  #  s.license       = 'MIT'
end
