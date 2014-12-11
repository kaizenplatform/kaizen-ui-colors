# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require 'compass/kaizen-ui-colors/version'

Gem::Specification.new do |s|
  s.name        = "compass-kaizen-ui-colors"
  s.version     = Compass::KaizenUIColors::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kaizen Platform"]
  s.email       = ["dev-team@kaizenplatform.com"]
  s.homepage    = "http://kaizenplatform.github.io/kaizen-ui-colors/"
  s.summary     = %q{ Compass extension for Sass Variables for Kaizen Platform UI Colors }
  s.description = %q{ Compass extension of Sass Variables for Kaizen Platform UI Colors }

  s.files         = `git ls-files`.split("\n")
  s.test_files    = []
  s.executables   = []
  s.require_paths = ["lib"]

  s.add_dependency("compass")
end
