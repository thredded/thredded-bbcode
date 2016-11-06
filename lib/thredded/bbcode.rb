# frozen_string_literal: true
require 'thredded/bbcode/version'
require 'thredded/bbcode/railtie' if defined?(Rails)
require 'thredded/bbcode/filter'

module Thredded
  module BBCode
    class << self
      attr_accessor :options

      def setup!
        Thredded::ContentFormatter.markup_filters.unshift(
          Thredded::BBCode::Filter
        )
        BBCoder.configure do
          tag :img, match: %r{^https?://.*(png|bmp|jpe?g|gif)$},
                    singular: false do
            %(<img src="#{singular? ? meta : content}" />)
          end

          tag :spoilers do
            %(<span class="thredded--post--content--spoiler">#{content}</span>)
          end

          tag :spoiler do
            %(<span class="thredded--post--content--spoiler">#{content}</span>)
          end
        end
      end
    end
  end
end
