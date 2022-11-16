class CitiesController < ApplicationController
  def show
    @id = params[:id]
    @city = City.find(@id)
    @itineraries = @city.itineraries
  end
end
