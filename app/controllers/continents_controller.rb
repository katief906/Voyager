class ContinentsController < ApplicationController
  def index
    @continents = Continent.all
  end

  def show
    @id = params[:id]
    @continent = Continent.find(@id)
    @countries = @continent.countries
  end
end
