class CoursesController < ApplicationController
  def index
    @terms = Term.order(id: :desc).all()
  end

  def show
    @term = Term.find(params[:id])
  end
end
