class Api::V1::ItinerariesController < ApplicationController
  def index
    render json: Itinerary.order(name: :asc)
  end

  def show
    render json: Itinerary.find(params[:id]), serializer: ItineraryShowPageSerializer
  end
end