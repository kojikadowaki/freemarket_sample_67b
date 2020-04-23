class AddColumnProductStatus < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :product_status_id, :integer, null: false
  end
end
