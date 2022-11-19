class Country < ApplicationRecord
  validates :name, presence: true
  validates :country_code, presence: true

  belongs_to :continent
  has_many :cities
end