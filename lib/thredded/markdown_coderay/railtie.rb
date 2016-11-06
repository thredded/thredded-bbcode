# frozen_string_literal: true
module Thredded
  module MarkdownCoderay
    class Railtie < Rails::Railtie
      initializer 'thredded.markdown_coderay', after: 'thredded' do
        Thredded::MarkdownCoderay.setup!
      end
    end
  end
end
