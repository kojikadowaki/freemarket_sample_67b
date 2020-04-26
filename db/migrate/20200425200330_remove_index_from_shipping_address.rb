class RemoveIndexFromShippingAddress < ActiveRecord::Migration[5.0]
  def change
    remove_index :shipping_addresses, :phone_number
  end
end
