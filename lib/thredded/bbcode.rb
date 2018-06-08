# frozen_string_literal: true

require 'thredded/bbcode/version'
require 'thredded/bbcode/railtie' if defined?(Rails)
require 'thredded/bbcode/filter'

module Thredded
  module BBCode
    class << self
      attr_accessor :options
      attr_accessor :spoiler_tags

      def setup!
        Thredded::ContentFormatter.markup_filters.unshift(
          Thredded::BBCode::Filter
        )
        Thredded::HtmlPipeline::SpoilerTagFilter.spoiler_tags = (
          Thredded::HtmlPipeline::SpoilerTagFilter.spoiler_tags +
            spoiler_tags.map { |name| %W[[#{name}] [/#{name}]] }
        ).uniq
        BBCoder.configure do
          tag :img, match: %r{^https?://.*(png|bmp|jpe?g|gif)$},
                    singular: false do
            %(<img src="#{singular? ? meta : content}" />)
          end
        end
      end
    end

    self.spoiler_tags = %w[spoiler]
  end
end
