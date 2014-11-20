# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sunil_custom_field/version'

Gem::Specification.new do |spec|
  spec.name          = "sunil_custom_field"
  spec.version       = SunilCustomField::VERSION
  spec.authors       = ["sunil kumar"]
  spec.email         = ["snlkumar447@gmail.com"]
  spec.summary       = %q{This gem is using for create custom field in dynamic form and add migration for the same and update schema as well.}
  spec.description   = %q{This gem is using for create custom field in dynamic form and add migration for the same and update schema as well.}
  spec.homepage      = "https://github.com/snlkumar/custom_fields"
  spec.license       = "Sunil"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
