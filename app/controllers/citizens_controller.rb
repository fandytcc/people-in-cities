class CitizensController < ApplicationController
  def index
    @citizens = Citizen.all
  end
  def show
    @citizen = Citizen.find(params[:id])
  end
  def new
    @citizen = Citizen.new
  end
  def create
    @citizen = Citizen.new(citizen_params)
    if @citizen.save
      redirect_to @citizen
    else
      render 'new'
    end
  end
  def edit
    @citizen = Citizen.find(params[:id])
  end
  def update
    @citizen = Citizen.find(params[:id])

    if @citizen.update_attributes(citizen_params)
      redirect_to @citizen
    else
      render 'edit'
    end
  end
  def destroy
    @citizen = Citizen.find(params[:id])
    @citizen.destroy
    redirect_to citizens_path
  end

  private

  def citizen_params
    params.require(:citizen).permit(:name, :age, :occupation, :city_id)
  end
end
