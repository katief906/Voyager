class Api::V1::ItinerariesController < ApiController
  before_action :authenticate_user, only: [:new, :create]

  def index
    render json: Itinerary.order(name: :asc)
  end

  def show
    render json: Itinerary.find(params[:id]), serializer: ItineraryShowPageSerializer
  end

  def new
    render json: Country.order(name: :asc)
  end

  def create
    itinerary = Itinerary.new(itinerary_params)
    itinerary.user = current_user
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

  def authenticate_user
    if !user_signed_in?
      render json: {error: ["You need to be signed in first."]}
    end
  end
end