# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'seed/it/version'

Gem::Specification.new do |spec|
  spec.name          = "seed-it"
  spec.version       = Seed::It::VERSION
  spec.authors       = ["Donavan White"]
  spec.email         = ["digi.cazter@gmail.com"]
  spec.description   = %q{seed-it adds the option to have multiple seed files and only run them once until they are updated}
  spec.summary       = %q{seed-it adds options for running multiple seed files and only running them once until they get update, then they will run again.
                          You have the option to clear out the old data before before running the new seed data or just add to what is there.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
