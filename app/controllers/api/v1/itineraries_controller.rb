class Api::V1::ItinerariesController < ApiController
  def index
    render json: Itinerary.order(name: :asc)
  end

  def show
    render json: Itinerary.find(params[:id]), serializer: ItineraryShowPageSerializer
  end

  def create
    itinerary = Itinerary.new(itinerary_params)
    city = City.find(params[:city_id])
    if itinerary.save
      destination = Destination.create(itinerary: itinerary, city: city)
      render json: { itinerary: itinerary }
    else
      render json: { error: itinerary.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private 

  def itinerary_params
    params.require(:itinerary).permit(:name, :departure_date, :return_date)
  end
end