# frozen_string_literal: true
module Thredded
  module MarkdownCoderay
    class InstallGenerator < Rails::Generators::Base
      desc 'Installs Thredded Markdown Coderay plugin.'
      source_root File.expand_path(
        '../../../templates/thredded/markdown_coderay/install',
        File.dirname(__FILE__)
      )
      public_task :install

      def install
        copy_file '_thredded-coderay.scss',
                  'app/assets/stylesheets/_thredded-coderay.scss'
        append_to_file 'app/assets/stylesheets/application.scss', <<~'SCSS'
          @import "thredded-coderay";
        SCSS
      end

      private

      def coderay_css
        require 'coderay'
        CodeRay::Encoders[:html]::CSS.new(:default).stylesheet
      end

      def indent(multiplier, content)
        spaces = ' ' * multiplier
        content.each_line.map do |line|
          line.blank? ? line : "#{spaces}#{line}"
        end.join
      end
    end
  end
end
