# frozen_string_literal: true
source 'https://rubygems.org'

# Specify your gem's dependencies in thredded-markdown_coderay.gemspec
gemspec

gem 'thredded', '>= 0.8.0', '< 1.0', git: 'https://github.com/thredded/thredded'

if ENV['CI']
  group :test do
    # CodeClimate coverage reporting.
    gem 'codeclimate-test-reporter', require: false
  end
end
