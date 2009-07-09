# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dm-filters}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jared Morgan"]
  s.date = %q{2009-07-09}
  s.email = %q{jmorgan@morgancreative.net}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.md"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.md",
     "Rakefile",
     "VERSION",
     "lib/dm-filters.rb",
     "lib/filters/bible_ml.rb",
     "lib/filters/linebreaker.rb",
     "spec/dm-filters_spec.rb",
     "spec/filters/bible_ml_spec.rb",
     "spec/filters/fixtures/gen11/input.xml",
     "spec/filters/fixtures/gen11/output.xml",
     "spec/filters/linebreaker_spec.rb",
     "spec/filters_resource_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/jm81/dm-filters}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{TODO}
  s.test_files = [
    "spec/dm-filters_spec.rb",
     "spec/filters/bible_ml_spec.rb",
     "spec/filters/linebreaker_spec.rb",
     "spec/filters_resource_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<dm-core>, [">= 0"])
    else
      s.add_dependency(%q<dm-core>, [">= 0"])
    end
  else
    s.add_dependency(%q<dm-core>, [">= 0"])
  end
end
