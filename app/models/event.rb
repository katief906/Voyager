class Event < ApplicationRecord
  belongs_to :itinerary
  belongs_to :stop
end