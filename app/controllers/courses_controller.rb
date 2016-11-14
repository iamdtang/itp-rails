class CoursesController < ApplicationController
  def index
    @terms = Term.where({ active: true }).order({ id: :desc }).all
  end

  def show
    @term = Term.find(params[:term_id])
    @course = Course.find(params[:course_id])
  end
end
