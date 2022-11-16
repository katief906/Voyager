class Country < ApplicationRecord
  validates :name, presence: true

  belongs_to :continent
  has_many :cities
end