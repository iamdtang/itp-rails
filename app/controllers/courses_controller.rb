class CoursesController < ApplicationController
  def index
    @terms = Term.where({ active: true }).order(id: :desc).all()
  end

  def show
    @term = Term.find(params[:id])
  end
end
