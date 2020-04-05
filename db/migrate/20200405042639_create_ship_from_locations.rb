class CreateShipFromLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_from_locations do |t|
      t.string :ship_from_location, null: false
      t.timestamps
    end
  end
end
