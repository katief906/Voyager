class Api::V1::StopsController < ApplicationController
  def index
    itinerary = Itinerary.find(params[:itinerary_id])
    render json: itinerary.stops.where(city_id: params[:city_id])
  end

  private
  def stop_params
    params.require(:stop).permit(:name, :address, :zip, :telephone, :website, :city)
  end
end