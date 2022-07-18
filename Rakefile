$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'activemerchant/payrix/version'

begin
  require 'bundler'
  Bundler.setup
rescue LoadError => e
  puts "Error loading bundler (#{e.message}): \"gem install bundler\" for bundler support."
  require 'rubygems'
end

require 'rake'
require 'rake/testtask'
require 'bundler/gem_tasks'

task :tag_release do
  system "git tag 'v#{ActiveMerchant::Payrix::VERSION}'"
  system 'git push --tags'
end

desc 'Run the unit test suite'
task default: 'test:units'
task test: 'test:units'

namespace :test do
  Rake::TestTask.new(:units) do |t|
    t.pattern = 'test/unit/**/*_test.rb'
    t.libs << 'test'
    t.verbose = false
  end

  desc 'Run all tests that do not require network access'
  task local: %w[test:units]

  Rake::TestTask.new(:remote) do |t|
    t.pattern = 'test/remote/**/*_test.rb'
    t.libs << 'test'
    t.verbose = true
  end
end
