# frozen_string_literal: true
require 'spec_helper'

describe Thredded::MarkdownCoderay do
  it 'has a version number' do
    expect(Thredded::MarkdownCoderay::VERSION).not_to be nil
  end

  it 'formats a fenced block' do
    markdown = <<~'MARKDOWN'
      ```ruby
      puts 1
      ```
    MARKDOWN
    expected_html = <<~'HTML'.rstrip
       <div class="language-ruby highlighter-coderay">
       <div class="CodeRay">
         <div class="code"><pre><span class="line-numbers">1</span>puts <span class="integer">1</span>
       </pre></div>
       </div>
       </div>
    HTML
    expect(Thredded::ContentFormatter.new(nil).format_content(markdown))
      .to(eq expected_html)
  end
end
