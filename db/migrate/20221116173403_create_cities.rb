class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name, null: false
      t.integer :latitude
      t.integer :longitude
      t.string :picture
      t.belongs_to :country, null: false

      t.timestamps null: false
    end
  end
end
