# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{wand}
  s.version = "0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["John Nunemaker"]
  s.date = %q{2010-03-08}
  s.description = %q{Mime-Type gem with fallback to unix file command}
  s.email = %q{nunemaker@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "lib/wand.rb",
     "test/files/AVGARDD.eot",
     "test/files/AVGARDD.svg",
     "test/files/AVGARDD.ttf",
     "test/files/AVGARDD.woff",
     "test/files/compressed.zip",
     "test/files/example.m4r",
     "test/files/favicon.ico",
     "test/files/index.html",
     "test/files/jquery.js",
     "test/files/ol_tiny.jpg",
     "test/files/ol_tiny.png",
     "test/files/styles.css",
     "test/helper.rb",
     "test/test_wand.rb",
     "wand.gemspec"
  ]
  s.homepage = %q{http://github.com/jnunemaker/wand}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Mime-Type gem with fallback to unix file command}
  s.test_files = [
    "test/helper.rb",
     "test/test_wand.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mime-types>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<mime-types>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<mime-types>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end

