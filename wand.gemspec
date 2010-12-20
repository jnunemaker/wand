# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "wand/version"

Gem::Specification.new do |s|
  s.name        = "wand"
  s.version     = Wand::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["John Nunemaker"]
  s.email       = ["nunemaker@gmail.com"]
  s.homepage    = "http://github.com/jnunemaker/wand"
  s.summary     = %q{Mime-Type gem with fallback to unix file command}
  s.description = %q{Mime-Type gem with fallback to unix file command}

  s.add_dependency 'mime-types'

  s.add_development_dependency 'shoulda'
  s.add_development_dependency 'mocha'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
