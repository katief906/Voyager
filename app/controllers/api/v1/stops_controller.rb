class Api::V1::StopsController < ApiController
  def index
    itinerary = Itinerary.find(params[:itinerary_id])
    render json: itinerary.stops.where(city_id: params[:city_id])
  end

  def new
    binding.pry
  end

  private
  def stop_params
    params.require(:stop).permit(:name, :address, :zip, :telephone, :website, :city)
  end
end