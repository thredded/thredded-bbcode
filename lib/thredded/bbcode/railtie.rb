# frozen_string_literal: true
module Thredded
  module BBCode
    class Railtie < Rails::Railtie
      initializer 'thredded.bbcode', after: 'thredded' do
        Thredded::BBCode.setup!
      end
    end
  end
end
