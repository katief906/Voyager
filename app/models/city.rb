class City < ApplicationRecord
  validates :name, presence: true

  belongs_to :country
  has_many :stops
  has_many :itineraries, through: :stops
end