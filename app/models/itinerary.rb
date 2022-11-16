class Itinerary < ApplicationRecord
  validates :name, presence: true

  has_many :stops
  has_many :cities, through: :stops
end