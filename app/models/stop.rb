class Stop < ApplicationRecord
  validates :name, presence: true
  
  belongs_to :city

  has_many :events
  has_many :itineraries, through: :events
end