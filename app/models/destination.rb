class Destination < ApplicationRecord
  belongs_to :itinerary
  belongs_to :city
end