class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate_student
    @student = Student.find(params[:id])
    @student.active = true if @student.active = false 
    @student.active = false if @student.active = tru
    @student.save
    redirect_to student_path
  end
  
  private

    def set_student
      @student = Student.find(params[:id])
    end
end