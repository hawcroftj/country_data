class Crop < ApplicationRecord
  validates :name, presence: true
  has_many :countries, through: :country_crops
end
