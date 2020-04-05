class CreateShippingAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :shipping_addresses do |t|
      t.string :address_first_name, null: false
      t.string :address_family_name, null: false
      t.string :address_first_name_kana, null: false
      t.string :address_family_name_kana, null: false
      t.integer :post_code, null: false
      t.string :prefecture, null: false
      t.string :city, null: false
      t.string :address_number, null: false
      t.string :building_name
      t.string :phone_number
      t.references :user, null: false
      t.timestamps
    end
    add_index :shipping_addresses, :phone_number, unique: true
  end
end
