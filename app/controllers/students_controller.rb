class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    # render :new
  end

  def create
    # Student.create(first_name: params[:first_name], last_name: params[:last_name])
    # redirect_to students_path(@student)
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    redirect_to student_path(@student) #redirects to new student's page
  end

end
