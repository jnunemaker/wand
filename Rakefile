require 'rubygems'
require 'rake'

require File.dirname(__FILE__) + '/lib/wand'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name     = 'wand'
    gem.summary  = gem.description = 'Mime-Type gem with fallback to unix file command'
    gem.email    = 'nunemaker@gmail.com'
    gem.homepage = 'http://github.com/jnunemaker/wand'
    gem.authors  = ['John Nunemaker']
    gem.version  = Wand::Version
    
    gem.add_dependency 'mime-types'
    gem.add_development_dependency 'shoulda'
    gem.add_development_dependency 'yard'
    gem.add_development_dependency 'mocha'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.ruby_opts << '-rubygems'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :test => :check_dependencies
task :default => :test

begin
  require 'yard'
  YARD::Rake::YardocTask.new
rescue LoadError
  task :yardoc do
    abort "YARD is not available. In order to run yardoc, you must: sudo gem install yard"
  end
end