class Airport < ApplicationRecord
  validates :code, :name, :city, presence: true
end
