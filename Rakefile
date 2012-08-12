# encoding: utf-8

require "rubygems"
require "bundler"
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require "rake"
require "jeweler"
require "rspec"
require "rspec/core/rake_task"

require "riaktus"

Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "riaktus"
  gem.homepage = "http://github.com/asaaki/riaktus"
  gem.version = Riaktus.version
  gem.license = "MIT"
  gem.summary = %Q{riaktus}
  gem.description = %Q{riaktus}
  gem.email = "chris@dinarrr.com"
  gem.authors = ["Christoph Grabo"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

desc "Starts IRB with gem loaded"
task :irb do
  sh "irb -I lib -r riaktus"
end

desc "Starts PRY with gem loaded"
task :pry do
  sh "pry -I lib -r riaktus --no-pager"
end

desc "Run all specs"
task RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/**/*_spec.rb'
  t.verbose = false
end

task :default => :spec
