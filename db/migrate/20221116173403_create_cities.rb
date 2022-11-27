class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name, null: false
      t.integer :geonameid, null: false
      t.string :latitude, null: false
      t.string :longitude, null: false
      t.integer :population, null: false
      t.string :picture
      t.belongs_to :country, null: false

      t.timestamps null: false
    end
  end
end
