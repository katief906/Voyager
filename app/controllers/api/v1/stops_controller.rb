class Api::V1::StopsController < ApiController
  def index
    itinerary = Itinerary.find(params[:itinerary_id])
    render json: itinerary.stops.where(city_id: params[:city_id])
  end

  def new
    itinerary = Itinerary.find(params[:itinerary_id])
    city = City.find(params[:city_id])
    latitude_array = city.latitude.split(".")
    if latitude_array[1].length < 6
      a = 1
      b = 6-(latitude_array[1].length)
      latitude_strings_array = latitude_array[1].split("")
      while a < b do
        latitude_strings_array << "0"
        a = a + 1
      end
      if a = b
        latitude_strings_array << "1"
        a = a + 1
      end
      latitude_decimals = latitude_strings_array.join("")
      latitude_array[1] = latitude_decimals
    end
    latitude = latitude_array.join(".")
    
    longitude_array = city.longitude.split(".")
    if longitude_array[1].length < 6
      a = 1
      b = 6-(longitude_array[1].length)
      longitude_strings_array = longitude_array[1].split("")
      while a < b do
        longitude_strings_array << "0"
        a = a + 1
      end
      if a = b
        longitude_strings_array << "1"
        a = a + 1
      end
      longitude_decimals = longitude_strings_array.join("")
      longitude_array[1] = longitude_decimals
    end
    longitude = longitude_array.join(".")

    # amadeus = Amadeus::Client.new(client_id: ENV['AMADEUS_API_KEY'], client_secret: ENV['AMADEUS_API_SECRET'])
    # api_response = amadeus.reference_data.locations.points_of_interest.get(latitude: latitude.to_f, longitude: longitude.to_f, category: "SIGHTS,SHOPPING,NIGHTLIFE")
    # if api_response.body
    #   parsed_response = JSON.parse(api_response.body)
    #   render json: parsed_response
    # end
    
    client = Yelp::Fusion::Client.new(ENV["YELP_API_KEY"])
    coordinates = {
      latitude: latitude.to_f,
      longitude: longitude.to_f
    }

    if params[:term]
      yelp_params = {
        radius: 8000,
        limit: 50,
        categories: params[:categories],
        term: params[:term]
      }
    else
      yelp_params = {
        radius: 8000,
        limit: 50,
        categories: params[:categories]
      }
    end

    api_response = client.search_by_coordinates(coordinates, yelp_params)
    render json: api_response
  end

  private
  def stop_params
    params.require(:stop).permit(:name, :address, :zip, :telephone, :website, :city)
  end
end