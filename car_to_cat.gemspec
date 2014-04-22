# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'car_to_cat/version'

Gem::Specification.new do |spec|
  spec.name          = "car_to_cat"
  spec.version       = CarToCat::VERSION
  spec.authors       = ["Dan S Turner"]
  spec.email         = ["contact@dansturner.com"]
  spec.summary       = %q{Convert car to cat in strings.}
  spec.description   = %q{This gem will change the word 'car' to 'cat' and also provide a CLI to run this conversion on files.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
