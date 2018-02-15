class Airport < ApplicationRecord
  validates :code, :name, :city, presence: true
  belongs_to :country
end
