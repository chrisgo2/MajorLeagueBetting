# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{colorbox-rails}
  s.version = "0.0.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{BÅaÅ¼ej Kosmowski}, %q{BartÅomiej Danek}]
  s.date = %q{2011-11-14}
  s.description = %q{Simple engine making colorbox use in rails super easy}
  s.email = [%q{b.kosmowski@selleo.com}]
  s.homepage = %q{http://www.selleo.com}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.5}
  s.summary = %q{Simple engine making colorbox use in rails super easy}

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
