# -*- encoding: utf-8 -*-
# stub: libv8 3.16.14.19 x86_64-darwin-16 lib ext

Gem::Specification.new do |s|
  s.name = "libv8"
  s.version = "3.16.14.19"
  s.platform = "x86_64-darwin-16"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib", "ext"]
  s.authors = ["Charles Lowell"]
  s.date = "2017-03-01"
  s.description = "Distributes the V8 JavaScript engine in binary and source forms in order to support fast builds of The Ruby Racer"
  s.email = ["cowboyd@thefrontside.net"]
  s.homepage = "http://github.com/cowboyd/libv8"
  s.licenses = ["MIT"]
  s.rubyforge_project = "libv8"
  s.rubygems_version = "2.4.5"
  s.summary = "Distribution of the V8 JavaScript engine"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 10"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2"])
      s.add_development_dependency(%q<rspec-spies>, ["~> 2"])
    else
      s.add_dependency(%q<rake>, ["~> 10"])
      s.add_dependency(%q<rake-compiler>, ["~> 0"])
      s.add_dependency(%q<rspec>, ["~> 2"])
      s.add_dependency(%q<rspec-spies>, ["~> 2"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 10"])
    s.add_dependency(%q<rake-compiler>, ["~> 0"])
    s.add_dependency(%q<rspec>, ["~> 2"])
    s.add_dependency(%q<rspec-spies>, ["~> 2"])
  end
end
