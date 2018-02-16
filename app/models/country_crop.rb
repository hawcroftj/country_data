class CountryCrop < ApplicationRecord
  validates :yield, presence: true
  belongs_to :country
  belongs_to :crop
end
