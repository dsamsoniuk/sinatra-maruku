# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sinatra-maruku}
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["W\305\202odek Bzyl"]
  s.date = %q{2009-05-11}
  s.description = %q{An extension providing Maruku templates for Sinatra applications.}
  s.email = %q{matwb@univ.gda.pl}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.markdown"
  ]
  s.files = [
    "LICENSE",
    "README.markdown",
    "Rakefile",
    "VERSION.yml",
    "examples/app.rb",
    "examples/config.ru",
    "examples/mapp.rb",
    "examples/public/javascripts/application.js",
    "examples/public/stylesheets/application.css",
    "examples/public/stylesheets/print.css",
    "examples/views/index.maruku",
    "examples/views/layout.maruku",
    "lib/sinatra/maruku.rb",
    "test/sinatra_maruku_test.rb",
    "test/test_helper.rb",
    "test/views/hello.maruku",
    "test/views/layout2.maruku"
  ]
  s.homepage = %q{http://github.com/wbzyl/sinatra-maruku}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{An extension providing Maruku templates for Sinatra applications.}
  s.test_files = [
    "test/test_helper.rb",
    "test/sinatra_maruku_test.rb",
    "examples/mapp.rb",
    "examples/app.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
