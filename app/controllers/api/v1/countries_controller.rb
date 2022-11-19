class Api::V1::CountriesController < ApplicationController
  def show
    render json: Country.find(params[:id])
  end
end