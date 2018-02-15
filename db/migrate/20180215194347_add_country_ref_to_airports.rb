class AddCountryRefToAirports < ActiveRecord::Migration[5.1]
  def change
    add_reference :airports, :country, foreign_key: true
  end
end
