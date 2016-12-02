class AssignmentsController < ApplicationController
  before_filter :authenticate_request!
  
  def index
    @user = current_user
    @courses = @user.courses
    @course = @courses.find(params[:course_id])
    @assignments = @course.assignments
    render json: @assignments
  end

  # def show
  #   @course = Course.find(params[:course_id])
  #   @assignment = @course.assignments.find(params[:id])
  #   render json: @assignment
  # end

end
