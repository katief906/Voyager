class CreateStops < ActiveRecord::Migration[5.2]
  def change
    create_table :stops do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :zip, null: false
      t.string :telephone
      t.string :website
      t.belongs_to :city, null: false

      t.timestamps null: false
    end
  end
end
