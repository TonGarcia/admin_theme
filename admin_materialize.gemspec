# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'admin_materialize/version'

Gem::Specification.new do |spec|
  spec.name          = "admin_materialize"
  spec.version       = AdminMaterialize::Rails::VERSION
  spec.authors       = ["Ilton Garcia"]
  spec.email         = ["iltonsilveira91@gmail.com"]

  spec.summary       = 'Write a short summary, because Rubygems requires one.'
  spec.description   = 'Write a longer description or delete this line.'
  spec.homepage      = 'https://kpihunters.com'
  spec.license       = "MIT"

  spec.files = Dir["{lib,vendor}/**/*"] + ['README.md']
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2.26"
  spec.add_development_dependency "rake", "~> 13.0.6"
  spec.add_dependency "railties", "~> 6.1.4"
end
