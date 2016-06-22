# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dpn_cops/version'

Gem::Specification.new do |spec|
  spec.name          = 'dpn_cops'
  spec.version       = DpnCops::VERSION
  spec.authors       = ['Michael J. Giarlo', 'Darren L. Weber']
  spec.email         = ['mjgiarlo@stanford.edu', 'darren.weber@stanford.edu']

  spec.summary       = "DpnCops is a Rubocop configuration gem that holds DPN's baseline Ruby style guide."
  spec.description   = "DpnCops is a Rubocop configuration gem that holds DPN's baseline Ruby style guide."
  spec.homepage      = 'https://github.com/dpn-admin/dpn_cops'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '~> 0.37.0'
  spec.add_dependency 'rubocop-rspec', '~> 1.4.0'
  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'pry'
end
