# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "colorbox-rails"
  s.version = "0.0.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["B\u{c5}\u{82}a\u{c5}\u{bc}ej Kosmowski", "Bart\u{c5}\u{82}omiej Danek"]
  s.date = "2011-11-14"
  s.description = "Simple engine making colorbox use in rails super easy"
  s.email = ["b.kosmowski@selleo.com"]
  s.homepage = "http://www.selleo.com"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Simple engine making colorbox use in rails super easy"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3.1.1"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 3.1.1"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.1.1"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
  end
end
