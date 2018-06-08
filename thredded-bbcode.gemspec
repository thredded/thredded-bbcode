# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thredded/bbcode/version'

Gem::Specification.new do |s|
  s.name          = 'thredded-bbcode'
  s.version       = Thredded::BBCode::VERSION
  s.authors       = ['Gleb Mazovetskiy']
  s.email         = ['glex.spb@gmail.com']

  s.summary       = 'Adds BBCode support to Thredded.'
  s.description   = 'Adds basic BBCode support to Thredded via the bbcoder gem.'
  s.homepage      = 'https://github.com/thredded/thredded-bbcode'
  s.license       = 'MIT'

  s.required_ruby_version = '~> 2.3'

  s.files = Dir['{lib}/**/*'] + %w[LICENSE.txt README.md]

  s.require_paths = ['lib']

  s.add_dependency 'bbcoder'
  s.add_development_dependency 'rspec', '~> 3.5'
  s.add_development_dependency 'rubocop', '~> 0.57'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'thredded', '>= 0.15.0'
end
