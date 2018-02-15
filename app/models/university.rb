class University < ApplicationRecord
  validates :code, :name, presence: true
  belongs_to :country
end
