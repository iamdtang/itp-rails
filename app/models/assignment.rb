class Assignment < ApplicationRecord
  def markdown_as_html
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, {
      prettify: true,
      fenced_code_blocks: true
    })

    markdown.render(body).html_safe
  end
end
