# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'admin_materialize/version'

Gem::Specification.new do |spec|
  spec.name          = "admin_materialize"
  spec.version       = AdminMaterialize::Rails::VERSION
  spec.authors       = ["Raphael Godoi"]
  spec.email         = ["raphael@deskti.com"]

  spec.summary       = 'Write a short summary, because Rubygems requires one.'
  spec.description   = 'Write a longer description or delete this line.'
  spec.homepage      = 'http://deskti.com'
  spec.license       = "MIT"

  spec.files = Dir["{lib,vendor}/**/*"] + ['README.md']
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "railties", "> 3.1", '< 5.0'
end
