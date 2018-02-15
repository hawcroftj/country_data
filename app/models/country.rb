class Country < ApplicationRecord
  validates :code, :name, presence: true
  has_many :airports
  has_many :universities
  has_many :crops, through: :country_crops
end
