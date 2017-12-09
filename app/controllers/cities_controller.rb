class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def new
   @city = City.new
 end

 def create
   @city = City.new(city_params)
   if @city.save
     redirect_to @city_pathelse
     render 'new'
   end
 end

 private

 def cities_params
   city_params = params.require(:city).permit(:name)
end






end
