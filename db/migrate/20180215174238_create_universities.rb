class CreateUniversities < ActiveRecord::Migration[5.1]
  def change
    create_table :universities do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
