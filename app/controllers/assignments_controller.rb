class AssignmentsController < ApplicationController
  def show
    begin
      @assignment = Assignment.find(params[:id])
    rescue
      redirect_to :page_not_found
    end
  end
end
