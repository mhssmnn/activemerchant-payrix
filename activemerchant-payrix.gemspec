# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'activemerchant/payrix/version'

Gem::Specification.new do |s|
  s.name = 'activemerchant-payrix'
  s.version = ActiveMerchant::Payrix::VERSION
  s.authors = ['Mark Haussmann']
  s.email = ['mark.haussmann@gmail.com']
  s.homepage = ''
  s.summary = 'ActiveMerchant Payrix Plugin'
  s.description = 'An ActiveMerchant plugin that provides a Payrix gateway'

  s.rubyforge_project = 'activemerchant-payrix'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables =
    `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency('test-unit', '~> 3')
  s.add_development_dependency('mocha', '~> 1')
  s.add_development_dependency('rake')
  s.add_runtime_dependency 'activemerchant', '>= 1.20.0'
end
