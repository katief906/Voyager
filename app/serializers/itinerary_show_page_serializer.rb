class ItineraryShowPageSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture

  has_many :stops
  has_many :cities
end
