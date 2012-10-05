# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'codebase_cli'

Gem::Specification.new do |s|
  s.name        = "codebase-cli"
  s.version     = CodebaseCli::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Lucas Fais"]
  s.email       = ["lucasfais@gmail.com"]
  s.homepage    = "https://github.com/abril/codebase-cli"
  s.summary     = %q{Command line utility to open codebase repositories in you browser}
  s.description = %q{Command line utility to open codebase repositories in you browser}

  s.required_rubygems_version = ">= 1.3.6"
  
  s.add_development_dependency "step-up"

  excepts = %w[
    .gitignore
    codebase-cli.gemspec
  ]
  
  s.files = `git ls-files`.split("\n") - excepts
  s.require_paths = ["lib"]
  s.executables = %w(cb)
end