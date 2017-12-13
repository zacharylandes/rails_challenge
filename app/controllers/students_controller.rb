class StudentsController < ApplicationController
  def index
    @student = Student.all
  end
  def show
    @student = Student.find(params[:id])
    render :show
  end
  def new
    @student = Student.new
  end
  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path(@student)
    else
    end
  end
  def edit
  end
  def update
  end
  def destroy
  end

private
    def student_params
    params.require(:student).permit(:name, :id)
  end

end
