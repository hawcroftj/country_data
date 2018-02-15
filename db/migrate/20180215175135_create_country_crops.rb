class CreateCountryCrops < ActiveRecord::Migration[5.1]
  def change
    create_table :country_crops do |t|
      t.references :country, foreign_key: true
      t.references :crop, foreign_key: true
      t.decimal :yield

      t.timestamps
    end
  end
end
