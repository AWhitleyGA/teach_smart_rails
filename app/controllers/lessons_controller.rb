class LessonsController < ApplicationController
  before_filter :authenticate_request!

  def index
    @user = current_user
    @courses = current_user.courses
    @course = @courses.find(params[:course_id])
    @lessons = @course.lessons
    render json: @lessons
  end

  # def show
  #   @course = Course.find(params[:course_id])
  #   @lesson = @course.lessons.find(params[:id])
  #   render json: @lesson
  # end
end
