class Stop < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :zip, presence: true
  
  belongs_to :city

  has_many :events
  has_many :itineraries, through: :events
end