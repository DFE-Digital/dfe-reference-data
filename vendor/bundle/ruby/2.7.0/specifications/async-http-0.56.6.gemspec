# -*- encoding: utf-8 -*-
# stub: async-http 0.56.6 ruby lib

Gem::Specification.new do |s|
  s.name = "async-http".freeze
  s.version = "0.56.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Samuel Williams".freeze, "Brian Morearty".freeze, "Bruno Sutic".freeze, "Janko Marohni\u0107".freeze, "Adam Daniels".freeze, "Cyril Roelandt".freeze, "Denis Talakevich".freeze, "Ian Ker-Seymer".freeze, "Igor Sidorov".freeze, "Marco Concetto Rudilosso".freeze, "Olle Jonsson".freeze, "Orgad Shaneh".freeze, "Stefan Wrobel".freeze, "TheAthlete".freeze, "Trevor Turk".freeze, "samshadwell".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIEhDCCAuygAwIBAgIBATANBgkqhkiG9w0BAQsFADA3MTUwMwYDVQQDDCxzYW11\nZWwud2lsbGlhbXMvREM9b3Jpb250cmFuc2Zlci9EQz1jby9EQz1uejAeFw0yMTA4\nMTYwNjMzNDRaFw0yMjA4MTYwNjMzNDRaMDcxNTAzBgNVBAMMLHNhbXVlbC53aWxs\naWFtcy9EQz1vcmlvbnRyYW5zZmVyL0RDPWNvL0RDPW56MIIBojANBgkqhkiG9w0B\nAQEFAAOCAY8AMIIBigKCAYEAyXLSS/cw+fXJ5e7hi+U/TeChPWeYdwJojDsFY1xr\nxvtqbTTL8gbLHz5LW3QD2nfwCv3qTlw0qI3Ie7a9VMJMbSvgVEGEfQirqIgJXWMj\neNMDgKsMJtC7u/43abRKx7TCURW3iWyR19NRngsJJmaR51yGGGm2Kfsr+JtKKLtL\nL188Wm3f13KAx7QJU8qyuBnj1/gWem076hzdA7xi1DbrZrch9GCRz62xymJlrJHn\n9iZEZ7AxrS7vokhMlzSr/XMUihx/8aFKtk+tMLClqxZSmBWIErWdicCGTULXCBNb\nE/mljo4zEVKhlTWpJklMIhr55ZRrSarKFuW7en0+tpJrfsYiAmXMJNi4XAYJH7uL\nrgJuJwSaa/dMz+VmUoo7VKtSfCoOI+6v5/z0sK3oT6sG6ZwyI47DBq2XqNC6tnAj\nw+XmCywiTQrFzMMAvcA7rPI4F0nU1rZId51rOvvfxaONp+wgTi4P8owZLw0/j0m4\n8C20DYi6EYx4AHDXiLpElWh3AgMBAAGjgZowgZcwCQYDVR0TBAIwADALBgNVHQ8E\nBAMCBLAwHQYDVR0OBBYEFB6ZaeWKxQjGTI+pmz7cKRmMIywwMC4GA1UdEQQnMCWB\nI3NhbXVlbC53aWxsaWFtc0BvcmlvbnRyYW5zZmVyLmNvLm56MC4GA1UdEgQnMCWB\nI3NhbXVlbC53aWxsaWFtc0BvcmlvbnRyYW5zZmVyLmNvLm56MA0GCSqGSIb3DQEB\nCwUAA4IBgQBVoM+pu3dpdUhZM1w051iw5GfiqclAr1Psypf16Tiod/ho//4oAu6T\n9fj3DPX/acWV9P/FScvqo4Qgv6g4VWO5ZU7z2JmPoTXZtYMunRAmQPFL/gSUc6aK\nvszMHIyhtyzRc6DnfW2AiVOjMBjaYv8xXZc9bduniRVPrLR4J7ozmGLh4o4uJp7w\nx9KCFaR8Lvn/r0oJWJOqb/DMAYI83YeN2Dlt3jpwrsmsONrtC5S3gOUle5afSGos\nbYt5ocnEpKSomR9ZtnCGljds/aeO1Xgpn2r9HHcjwnH346iNrnHmMlC7BtHUFPDg\nTs92S47PTOXzwPBDsrFiq3VLbRjHSwf8rpqybQBH9MfzxGGxTaETQYOd6b4e4Ag6\ny92abGna0bmIEb4+Tx9rQ10Uijh1POzvr/VTH4bbIPy9FbKrRsIQ24qDbNJRtOpE\nRAOsIl+HOBTb252nx1kIRN5hqQx272AJCbCjKx8egcUQKffFVVCI0nye09v5CK+a\nHiLJ8VOFx6w=\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2022-05-02"
  s.homepage = "https://github.com/socketry/async-http".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "A HTTP client and server library.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<async>.freeze, [">= 1.25"])
    s.add_runtime_dependency(%q<async-io>.freeze, [">= 1.28"])
    s.add_runtime_dependency(%q<async-pool>.freeze, [">= 0.2"])
    s.add_runtime_dependency(%q<protocol-http>.freeze, ["~> 0.22.0"])
    s.add_runtime_dependency(%q<protocol-http1>.freeze, ["~> 0.14.0"])
    s.add_runtime_dependency(%q<protocol-http2>.freeze, ["~> 0.14.0"])
    s.add_runtime_dependency(%q<traces>.freeze, ["~> 0.4.0"])
    s.add_development_dependency(%q<async-container>.freeze, ["~> 0.14"])
    s.add_development_dependency(%q<async-rspec>.freeze, ["~> 1.10"])
    s.add_development_dependency(%q<covered>.freeze, [">= 0"])
    s.add_development_dependency(%q<localhost>.freeze, [">= 0"])
    s.add_development_dependency(%q<rack-test>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.6"])
  else
    s.add_dependency(%q<async>.freeze, [">= 1.25"])
    s.add_dependency(%q<async-io>.freeze, [">= 1.28"])
    s.add_dependency(%q<async-pool>.freeze, [">= 0.2"])
    s.add_dependency(%q<protocol-http>.freeze, ["~> 0.22.0"])
    s.add_dependency(%q<protocol-http1>.freeze, ["~> 0.14.0"])
    s.add_dependency(%q<protocol-http2>.freeze, ["~> 0.14.0"])
    s.add_dependency(%q<traces>.freeze, ["~> 0.4.0"])
    s.add_dependency(%q<async-container>.freeze, ["~> 0.14"])
    s.add_dependency(%q<async-rspec>.freeze, ["~> 1.10"])
    s.add_dependency(%q<covered>.freeze, [">= 0"])
    s.add_dependency(%q<localhost>.freeze, [">= 0"])
    s.add_dependency(%q<rack-test>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.6"])
  end
end
