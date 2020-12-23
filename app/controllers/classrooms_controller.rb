class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    @student = @classroom.oldest_student
  end

  def index
    @classrooms = Classroom.all
    # @student = Student.where('name LIKE ?', "#{params[:query].strip}")
  end
end
