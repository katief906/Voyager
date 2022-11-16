class CountriesController < ApplicationController
  def show
    @id = params[:id]
    @country = Country.find(@id)
    @cities = @country.cities
  end
end