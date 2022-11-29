class CreateStops < ActiveRecord::Migration[5.2]
  def change
    create_table :stops do |t|
      t.belongs_to :city, null: false
      t.string :name, null: false
      t.string :address, null: false
      t.string :zip, null: false
      t.string :telephone
      t.string :yelp_id
      t.float :latitude
      t.float :longitude
      t.string :image_url
      t.string :price
      t.string :yelp_url

      t.timestamps null: false
    end
  end
end
