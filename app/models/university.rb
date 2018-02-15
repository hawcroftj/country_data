class University < ApplicationRecord
  validates :code, :name, presence: true
end
