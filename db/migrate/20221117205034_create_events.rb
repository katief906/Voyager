class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.belongs_to :stop, null: false
      t.belongs_to :itinerary, null: false

      t.timestamps null: false
    end
  end
end
