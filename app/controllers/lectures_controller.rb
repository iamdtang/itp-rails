class LecturesController < ApplicationController
  def show
    begin
      @lecture = Lecture.find(params[:id])

      unless @lecture.body
        raise "No lecture body"
      end

      markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, {
        prettify: true,
        fenced_code_blocks: true
      })
      @body = markdown.render(@lecture.body).html_safe
    rescue
      redirect_to :page_not_found
    end
  end
end
