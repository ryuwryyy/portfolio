# -*- encoding: utf-8 -*-
# stub: therubyracer 0.12.3 ruby lib ext
# stub: ext/v8/extconf.rb

Gem::Specification.new do |s|
  s.name = "therubyracer"
  s.version = "0.12.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib", "ext"]
  s.authors = ["Charles Lowell"]
  s.date = "2017-01-05"
  s.description = "Call JavaScript code and manipulate JavaScript objects from Ruby. Call Ruby code and manipulate Ruby objects from JavaScript."
  s.email = ["javascript-and-friends@googlegroups.com"]
  s.extensions = ["ext/v8/extconf.rb"]
  s.files = ["ext/v8/extconf.rb"]
  s.homepage = "http://github.com/cowboyd/therubyracer"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "Embed the V8 JavaScript interpreter into Ruby"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ref>, [">= 0"])
      s.add_runtime_dependency(%q<libv8>, ["~> 3.16.14.15"])
    else
      s.add_dependency(%q<ref>, [">= 0"])
      s.add_dependency(%q<libv8>, ["~> 3.16.14.15"])
    end
  else
    s.add_dependency(%q<ref>, [">= 0"])
    s.add_dependency(%q<libv8>, ["~> 3.16.14.15"])
  end
end
