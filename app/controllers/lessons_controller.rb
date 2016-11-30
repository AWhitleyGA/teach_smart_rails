class LessonsController < ApplicationController

  def index
    @course = Course.find(params[:course_id])
    @lessons = @course.lessons
    render json: {course: @course, lessons: @lessons}
  end

  def show
    @course = Course.find(params[:course_id])
    @lesson = @course.lessons.find(params[:id])
    render json: @lesson
  end
end
