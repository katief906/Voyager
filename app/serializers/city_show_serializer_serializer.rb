class CityShowSerializerSerializer < ActiveModel::Serializer
  attributes :id, :geonameid, :latitude, :longitude, :population, :picture, :country, :current_user

  has_many :itineraries
  has_many :stops
end
