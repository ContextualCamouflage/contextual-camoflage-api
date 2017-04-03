class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.float :latitude
      t.string :longitude
      t.string :ip_address, index: true
      t.string :street
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.boolean :kiosk

      t.timestamps
    end
  end
end
