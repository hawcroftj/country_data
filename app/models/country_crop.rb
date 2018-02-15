class CountryCrop < ApplicationRecord
  validates name, presence: true
  belongs_to :country
  belongs_to :crop
end
