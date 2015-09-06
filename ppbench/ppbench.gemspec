# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ppbench/version'

Gem::Specification.new do |spec|
  spec.name          = "ppbench"
  spec.version       = Ppbench::VERSION
  spec.authors       = ["Nane Kratzke"]
  spec.email         = ["nane.kratzke@googlemail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{Ping pong benchmark}
  spec.description   = %q{A tool to run ping pong benchmark to figure HTTP REST performances.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ['ppbench.rb']
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "commander"
  spec.add_development_dependency "parallel"
  spec.add_development_dependency "progressbar"
end
