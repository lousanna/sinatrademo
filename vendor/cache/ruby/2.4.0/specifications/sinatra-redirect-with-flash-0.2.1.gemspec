# -*- encoding: utf-8 -*-
# stub: sinatra-redirect-with-flash 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "sinatra-redirect-with-flash".freeze
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Vasily Polovnyov".freeze]
  s.date = "2014-01-02"
  s.description = "redirect with flash helper for Sinatra".freeze
  s.email = "vasily@polovnyov.ru".freeze
  s.extra_rdoc_files = ["LICENSE".freeze, "README.md".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "http://github.com/vast/sinatra-redirect-with-flash".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "redirect with flash helper for Sinatra".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>.freeze, [">= 1.0.0"])
      s.add_development_dependency(%q<rack-test>.freeze, [">= 0.3.0"])
      s.add_development_dependency(%q<sinatra-flash>.freeze, [">= 0.3.0"])
    else
      s.add_dependency(%q<sinatra>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<rack-test>.freeze, [">= 0.3.0"])
      s.add_dependency(%q<sinatra-flash>.freeze, [">= 0.3.0"])
    end
  else
    s.add_dependency(%q<sinatra>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<rack-test>.freeze, [">= 0.3.0"])
    s.add_dependency(%q<sinatra-flash>.freeze, [">= 0.3.0"])
  end
end
