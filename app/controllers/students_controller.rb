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
      redirect_to student_path(@student)
    else
      render :new
    end
  end
  def edit
        @student = Student.find(params[:id])

        # render :edit

  end

  def update
    @student =  Student.find(params[:id])
            @student.update(student_params)
          if @student.save
            redirect_to student_path(@student)
          else
            render :edit
          end
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy
    flash[:success] = "#{student.name} was successfully deleted!"
    redirect_to students_path
  end

private

    def student_params
    params.require(:student).permit(:name)
    end

end
