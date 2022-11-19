class Api::V1::CitiesController < ApplicationController
  def index
    country = Country.find(params[:country_id])
    country_code = country.country_code

    api_key = ENV["REACT_X_RAPIDAPI_KEY"]

    api_response = Faraday.get do |request|
      request.url "https://countries-cities.p.rapidapi.com/location/country/#{country_code}/city/list?page=1&per_page=1000&format=json&population=100000"
      request.headers['X-RapidAPI-Key'] = api_key
      request.headers['X-RapidAPI-Host'] = 'countries-cities.p.rapidapi.com'
    end

    parsed_response = JSON.parse(api_response.body)

    render json: parsed_response
  end
end