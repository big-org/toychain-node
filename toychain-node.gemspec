# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'toychain-node/version'

Gem::Specification.new do |spec|
  spec.name          = "toychain-node"
  spec.version       = ToyChain::Node::VERSION
  spec.authors       = ["Rakesh BS"]
  spec.email         = ["rakeshbs@gmail.com"]
  spec.summary       = %q{Gem that holds the ToyChain node}
  spec.description   = %q{ToyChain Node is part of the ToyChain project that holds the node}
  spec.homepage      = "http://github.com/JikkuJose/toychain-node/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rerun"
  spec.add_development_dependency "rake"
end
