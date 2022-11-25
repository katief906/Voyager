class Api::V1::CountriesController < ApiController
  def index
    render json: Country.order(name: :asc)
  end
  
  def show
    render json: Country.find(params[:id])
  end
end