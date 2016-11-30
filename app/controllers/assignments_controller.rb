class AssignmentsController < ApplicationController

  def index
    @course = Course.find(params[:course_id])
    @assignments = @course.assignments
    render json: {course: @course, assignments: @assignments}
  end

  def show
    @course = Course.find(params[:course_id])
    @assignment = @course.assignments.find(params[:id])
    render json: @assignment
  end
  
end
