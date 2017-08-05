# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sequence_rb/version'

Gem::Specification.new do |spec|
  spec.name          = "sequence_rb"
  spec.version       = SequenceRb::VERSION
  spec.authors       = ["John Sloan"]
  spec.email         = ["jwsloan@gmail.com"]

  spec.summary       = %q{Write a short summary, because Rubygems requires one.}
  spec.homepage      = "https://github.com/jwsloan/sequence-rb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "byebug"
end
