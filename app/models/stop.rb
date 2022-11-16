class Stop < ApplicationRecord
  belongs_to :itinerary
  belongs_to :city
end