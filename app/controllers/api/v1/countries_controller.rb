class Api::V1::CountriesController < ApiController
  def show
    render json: Country.find(params[:id])
  end
end