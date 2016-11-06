# frozen_string_literal: true
SimpleCov.start do
  add_filter '/spec/'
  add_group 'Lib', 'lib/'
  formatter SimpleCov::Formatter::HTMLFormatter unless ENV['TRAVIS']
end
