class CoursesController < ApplicationController
  def index
    @terms = Term.order(id: :desc).all()
  end
end
