# -*- encoding: utf-8 -*-
require File.expand_path("../lib/markdown2confluence/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "markdown2confluence"
  s.version     = Markdown2Confluence::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Patrick Debois"]
  s.email       = ["patrick.debois@jedi.be"]
  s.homepage    = "http://github.com/jedi4ever/markdown2confluence/"
  s.summary     = %q{Convert Markdown to confluence wiki style}
  s.description = %q{Based on Kramdown, a convert object .to_confluence}

  s.required_rubygems_version = ">= 1.3.6"
  s.required_ruby_version = '>= 3.1.0'
  s.rubyforge_project         = "markdown2confluence"

  s.add_dependency "kramdown"
  s.add_dependency "nokogiri"
  
  s.add_development_dependency('rake', '>= 13.0.6')
  s.add_development_dependency('minitest', '>= 5.17.0')
  s.add_development_dependency('activesupport', '~> 6.0.0')

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
  s.test_files = s.files.select { |path| path =~ /^test\/.*_test\.rb/ }
end

