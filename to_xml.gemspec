# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "to_xml/version"

Gem::Specification.new do |s|
  s.name        = "to_xml"
  s.version     = ToXml::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Clive Crous"]
  s.email       = ["clive@crous.co.za"]
  s.homepage    = "http://www.darkarts.co.za/to_xml"
  s.summary     = %q{AnyObject.to_xml - useful for adding XML support to APIs}
  s.description = %q{AnyObject.to_xml - useful for adding XML support to APIs}

  s.rubyforge_project = "to_xml"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rake", ">= 0.8.7"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
