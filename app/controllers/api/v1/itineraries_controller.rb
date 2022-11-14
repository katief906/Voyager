class Api::V1::ItinerariesController < ApplicationController
  def index
    render json: Itinerary.order(name: :asc)
  end
end