class RemoveProductStatusIdFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :product_status_id, :integer
  end
end
