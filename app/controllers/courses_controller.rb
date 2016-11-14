class CoursesController < ApplicationController
  def index
    @terms = Term.where({ active: true }).order({ id: :desc }).all
  end

  def show
    begin
      @term = Term.find(params[:term_id])
      @course = Course.where(slug: params[:course_slug]).first!
    rescue
      redirect_to :page_not_found
    end
  end
end
