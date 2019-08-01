class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @students = Student.find(params[:id])
    @students.active = true
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end