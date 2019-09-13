# -*- encoding: utf-8 -*-
# frozen_string_literal: true

require File.expand_path('lib/flipper/version', __dir__)
require File.expand_path('lib/flipper/metadata', __dir__)

flipper_dalli_files = lambda do |file|
  file =~ /dalli/
end

Gem::Specification.new do |gem|
  gem.authors       = ['John Nunemaker']
  gem.email         = ['nunemaker@gmail.com']
  gem.summary       = 'Dalli adapter for Flipper'
  gem.description   = 'Dalli adapter for Flipper'
  gem.license       = 'MIT'
  gem.homepage      = 'https://github.com/jnunemaker/flipper'

  gem.files         = `git ls-files`.split("\n").select(&flipper_dalli_files) + ['lib/flipper/version.rb']
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n").select(&flipper_dalli_files)
  gem.name          = 'flipper-dalli'
  gem.require_paths = ['lib']
  gem.version       = Flipper::VERSION
  gem.metadata      = Flipper::METADATA

  gem.add_dependency 'dalli', '>= 2.0', '< 3'
  gem.add_dependency 'flipper', "~> #{Flipper::VERSION}"
end
