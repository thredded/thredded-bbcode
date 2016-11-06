# frozen_string_literal: true
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thredded/markdown_coderay/version'

Gem::Specification.new do |s|
  s.name          = 'thredded-markdown_coderay'
  s.version       = Thredded::MarkdownCoderay::VERSION
  s.authors       = ['Gleb Mazovetskiy']
  s.email         = ['glex.spb@gmail.com']

  s.summary       = 'Thredded Markdown code blocks highlighting via Coderay.'
  s.description   = 'Highlights code syntax in your Markdown posts via Coderay.'
  s.homepage      = 'https://github.com/thredded/thredded_create_app'
  s.license       = 'MIT'

  s.required_ruby_version = '~> 2.3'

  s.files = Dir['{lib}/**/*'] + %w(LICENSE.txt README.md)

  s.require_paths = ['lib']

  s.add_dependency 'coderay'
  s.add_development_dependency 'rubocop', '~> 0.45'
  s.add_development_dependency 'rspec', '~> 3.5'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'thredded', '>= 0.8.0'
end
