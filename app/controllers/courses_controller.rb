class CoursesController < ApplicationController
  def index
    @terms = Term.all()
  end
end
