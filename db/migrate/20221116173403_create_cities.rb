class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name, null: false
      t.integer :geonameid
      t.string :latitude
      t.string :longitude
      t.integer :population
      t.string :picture
      t.belongs_to :country, null: false

      t.timestamps null: false
    end
  end
end
