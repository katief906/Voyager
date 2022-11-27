class ItineraryShowPageSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture, :current_user

  has_many :stops
  has_many :cities
end
