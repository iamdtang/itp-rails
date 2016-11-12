class AssignmentsController < ApplicationController
  def show
    @assignment = Assignment.find(params[:id])

    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, {
      prettify: true,
      fenced_code_blocks: true
    })
    @body = markdown.render(@assignment.body).html_safe
  end
end
