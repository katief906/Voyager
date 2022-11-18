class City < ApplicationRecord
  validates :name, presence: true

  belongs_to :country

  has_many :destinations
  has_many :itineraries, through: :destinations

  has_many :stops
end