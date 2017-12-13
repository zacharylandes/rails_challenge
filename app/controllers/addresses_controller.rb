class AddressesController < ApplicationController
  def index
    @addresse = Address.all
  end

  def show
    @addresse = Address.find(params[:id])
    render :show
  end
  def new
    @addresse = Address.new
  end
  def create
    @addresse = Address.new(student_params)
    if @addresse.save
      redirect_to student_path(@addresse)
    else
      render :new
    end
  end
  def edit
        @addresse = Address.find(params[:id])

        # render :edit

  end

  def update
    @addresse =  Address.find(params[:id])
            @addresse.update(student_params)
          if @addresse.save
            redirect_to student_path(@addresse)
          else
            render :edit
          end
  end

  def destroy
    addresse = Address.find(params[:id])
    addresse.destroy
    flash[:success] = "#{addresse.name} was successfully deleted!"
    redirect_to students_path
  end

private

    def student_params
    params.require(:addresse).permit(:name)
    end

end
