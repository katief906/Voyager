class ItineraryShowPageSerializer < ActiveModel::Serializer
  attributes :id, :name, :departure_date, :return_date, :picture, :current_user, :user

  has_many :stops
  has_many :cities
end