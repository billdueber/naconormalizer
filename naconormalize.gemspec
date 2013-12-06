# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'naconormalizer/version'

Gem::Specification.new do |spec|
  spec.platform      = "java"
  spec.name          = "naconormalizer"
  spec.version       = NacoNormalizer::VERSION
  spec.authors       = ["Bill Dueber"]
  spec.email         = ["bill@dueber.com"]
  spec.description   = %q{Apply NACO normaliation to a string. This is just a tiny wrapper around code taken from https://code.google.com/p/oclcNacoNormalizerr/}
  spec.summary       = %q{Apply NACO normaliation to a string}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  
end
