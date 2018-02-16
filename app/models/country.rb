class Country < ApplicationRecord
  validates :code, :name, presence: true
  has_many :airports, :dependent => :destroy
  has_many :universities, :dependent => :destroy
  has_many :country_crops
  has_many :crops, through: :country_crops
end
