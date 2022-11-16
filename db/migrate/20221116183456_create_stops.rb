class CreateStops < ActiveRecord::Migration[5.2]
  def change
    create_table :stops do |t|
      t.belongs_to :city, null: false
      t.belongs_to :itinerary, null: false

      t.timestamps null: false
    end
  end
end
