class Itinerary < ApplicationRecord
  validates :name, presence: true

  has_many :destinations
  has_many :cities, through: :destinations

  has_many :events
  has_many :stops, through: :events
end