class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :code
      t.string :name
      t.decimal :gdp

      t.timestamps
    end
  end
end
