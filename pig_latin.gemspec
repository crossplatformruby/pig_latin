# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pig_latin/version'

Gem::Specification.new do |spec|
  spec.name          = "pig_latin"
  spec.version       = PigLatin::VERSION
  spec.authors       = ["Micha\xC5\x82 Taszycki"]
  spec.email         = ["michal@crossplatformruby.com"]
  spec.summary       = %q{Translator from english to pig latin.}
  spec.description   = %q{A bit nonsensical gem used as an example of a Cross Platform Ruby Gem.}
  spec.homepage      = "http://crossplatformruby.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
