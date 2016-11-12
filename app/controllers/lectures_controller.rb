class LecturesController < ApplicationController
  def show
    @lecture = Lecture.find(params[:id])
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, {
      prettify: true,
      fenced_code_blocks: true
    })
    @body = markdown.render(@lecture.body).html_safe
  end
end
