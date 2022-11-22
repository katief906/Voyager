require 'date'

class Itinerary < ApplicationRecord
  validates :name, presence: true
  validate :departure_date_on_or_after_today
  validate :return_date_after_departure_date
  
  has_many :destinations
  has_many :cities, through: :destinations

  has_many :events
  has_many :stops, through: :events

  private

  def departure_date_on_or_after_today
    return if departure_date.blank?
    if departure_date < Date.today
      errors.add(:departure_date, "must be on or after today's date")
    end
  end

  def return_date_after_departure_date
    return if return_date.blank? || departure_date.blank?

    if return_date < departure_date
      errors.add(:return_date, "must be after selected departure date")
    end
  end
end