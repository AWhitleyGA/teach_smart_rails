class CoursesController < ApplicationController

  def index
    @courses = Course.all
    render json: @courses
  end

  def show
    @course = Course.find(params[:id])
    @assignments = @course.assignments
    @lessons = @course.lessons
    render json: { course: @course, assignments: @assignments, lessons: @lessons }
  end

  def new
    render json: form_authenticity_token
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      render json: { result: @course, status: :created, location: course_path(@course)}
    else
      render json: { result: @course.errors }
    end
  end

  private

  def course_params
    params.require(:course).permit(:name, :description, :location, :start_date, :end_date)
  end
end
