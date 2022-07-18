# -*- encoding: utf-8 -*-
# stub: protocol-http2 0.14.2 ruby lib

Gem::Specification.new do |s|
  s.name = "protocol-http2".freeze
  s.version = "0.14.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Samuel Williams".freeze]
  s.date = "2021-01-25"
  s.homepage = "https://github.com/socketry/protocol-http2".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "A low level implementation of the HTTP/2 protocol.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<protocol-hpack>.freeze, ["~> 1.4"])
    s.add_runtime_dependency(%q<protocol-http>.freeze, ["~> 0.18"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<covered>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
  else
    s.add_dependency(%q<protocol-hpack>.freeze, ["~> 1.4"])
    s.add_dependency(%q<protocol-http>.freeze, ["~> 0.18"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<covered>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
