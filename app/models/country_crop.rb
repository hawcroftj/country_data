class CountryCrop < ApplicationRecord
  belongs_to :country
  belongs_to :crop
end
