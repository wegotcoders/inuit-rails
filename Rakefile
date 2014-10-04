# encoding: utf-8

require 'rubygems'
require 'rake'
require 'jeweler'

Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "inuit-rails"
  gem.homepage = "http://github.com/dmgarland/inuit-rails"
  gem.license = "MIT"
  gem.summary = %Q{The Inuit CSS framework packaged as a Rails/Sprockets compatible gem}
  gem.description = %Q{A Rails enginge that permits the use of inuit css files within a Rails application. }
  gem.email = "dan@dangarland.co.uk"
  gem.authors = ["Dan Garland"]
end
Jeweler::RubygemsDotOrgTasks.new

task :default => :gemspec

task :bower do
  `bower update 'inuit-starter-kit'`
end