class ItineraryShowPageSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture, :user, :current_user

  has_many :stops
  has_many :cities
end
