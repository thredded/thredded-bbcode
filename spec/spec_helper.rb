# frozen_string_literal: true
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'thredded/markdown_coderay'

require 'thredded'
require 'thredded/content_formatter'

Thredded::ContentFormatter.class_eval do
  def content_pipeline_options
    {
      whitelist: Thredded::ContentFormatter.whitelist,
      # This comes from Rails by default, but we don't want to load Rails:
      asset_root: '/'
    }
  end
end

Thredded::MarkdownCoderay.setup!
