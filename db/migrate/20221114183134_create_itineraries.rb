class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.string :name, null: false
      t.date :departure_date
      t.date :return_date
      t.string :picture
      
      t.timestamps null: false
    end
  end
end
