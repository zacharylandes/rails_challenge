class AddressesController < ApplicationController
  def index
    @address = Address.all
  end

  def show
    @address = Address.find(params[:id])
    render :show
  end

  def new
    @student = Student.find(params[:student_id])
    @address = Address.new
  end

  def create
    @student = Student.find(params[:student_id])
      # @job = @company.jobs.new(job_params)
    @address = @student.addresses.new(address_params)
    if @address.save
      # byebug
      redirect_to student_path(@student)

      # render :
    end
  end
  def edit
        @address = Address.find(params[:id])

        # render :edit

  end

  def update
    @address =  Address.find(params[:id])
            @address.update(student_params)
          if @address.save
            redirect_to student_address_path(@address)
          else
            render :edit
          end
  end

  def destroy
    address = Address.find(params[:id])
    address.destroy
    flash[:success] = "address was successfully deleted!"
    redirect_to students_path
  end

private

    def address_params
    params.require(:address).permit(:street,:city,:state,:zipcode,:description, :student_id)
    end

end
