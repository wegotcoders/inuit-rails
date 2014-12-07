# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: inuit-rails 0.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "inuit-rails"
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dan Garland"]
  s.date = "2014-12-07"
  s.description = "A Rails enginge that permits the use of inuit css files within a Rails application. "
  s.email = "dan@dangarland.co.uk"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md",
    "README.rdoc"
  ]
  s.files = [
    ".bowerrc",
    ".document",
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bower.json",
    "inuit-rails.gemspec",
    "lib/inuit-rails.rb",
    "lib/inuit-rails/rails.rb",
    "lib/inuit-rails/rails/engine.rb",
    "test/helper.rb",
    "test/test_inuit-rails.rb",
    "vendor/assets/stylesheets/inuit-box-sizing/_generic.box-sizing.scss",
    "vendor/assets/stylesheets/inuit-box/_objects.box.scss",
    "vendor/assets/stylesheets/inuit-buttons/_objects.buttons.scss",
    "vendor/assets/stylesheets/inuit-clearfix/_trumps.clearfix.scss",
    "vendor/assets/stylesheets/inuit-defaults/_settings.defaults.scss",
    "vendor/assets/stylesheets/inuit-flag/_objects.flag.scss",
    "vendor/assets/stylesheets/inuit-flyout/_objects.flyout.scss",
    "vendor/assets/stylesheets/inuit-forms/_base.forms.scss",
    "vendor/assets/stylesheets/inuit-functions/_tools.functions.scss",
    "vendor/assets/stylesheets/inuit-headings/_base.headings.scss",
    "vendor/assets/stylesheets/inuit-images/_base.images.scss",
    "vendor/assets/stylesheets/inuit-layout/_objects.layout.scss",
    "vendor/assets/stylesheets/inuit-list-bare/_objects.list-bare.scss",
    "vendor/assets/stylesheets/inuit-list-block/_objects.list-block.scss",
    "vendor/assets/stylesheets/inuit-list-inline/_objects.list-inline.scss",
    "vendor/assets/stylesheets/inuit-list-ui/_objects.list-ui.scss",
    "vendor/assets/stylesheets/inuit-lists/_base.lists.scss",
    "vendor/assets/stylesheets/inuit-media/_objects.media.scss",
    "vendor/assets/stylesheets/inuit-mixins/_tools.mixins.scss",
    "vendor/assets/stylesheets/inuit-normalize/_generic.normalize.scss",
    "vendor/assets/stylesheets/inuit-page/_base.page.scss",
    "vendor/assets/stylesheets/inuit-paragraphs/_base.paragraphs.scss",
    "vendor/assets/stylesheets/inuit-print/_trumps.print.scss",
    "vendor/assets/stylesheets/inuit-responsive-settings/_settings.responsive.scss",
    "vendor/assets/stylesheets/inuit-responsive-tools/_tools.responsive.scss",
    "vendor/assets/stylesheets/inuit-spacing-responsive/_trumps.spacing-responsive.scss",
    "vendor/assets/stylesheets/inuit-spacing/_trumps.spacing.scss",
    "vendor/assets/stylesheets/inuit-tables/_objects.tables.scss",
    "vendor/assets/stylesheets/inuit-tabs/_objects.tabs.scss",
    "vendor/assets/stylesheets/inuit-widths-responsive/_trumps.widths-responsive.scss",
    "vendor/assets/stylesheets/inuit-widths/_trumps.widths.scss"
  ]
  s.homepage = "http://github.com/dmgarland/inuit-rails"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "The Inuit CSS framework packaged as a Rails/Sprockets compatible gem"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end

