class AddCountryRefToUniversities < ActiveRecord::Migration[5.1]
  def change
    add_reference :universities, :country, foreign_key: true
  end
end
