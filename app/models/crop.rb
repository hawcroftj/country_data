class Crop < ApplicationRecord
  validates :name, presence: true
  has_many :country_crops
  has_many :countries, through: :country_crops
end
