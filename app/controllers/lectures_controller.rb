class LecturesController < ApplicationController
  def show
    @lecture = Lecture.find(params[:id])

    if (@lecture.body)
      markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, {
        prettify: true,
        fenced_code_blocks: true
      })
      @body = markdown.render(@lecture.body).html_safe
    else
      redirect_to(courses_url())
    end
  end
end
