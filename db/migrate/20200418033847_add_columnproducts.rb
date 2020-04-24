class AddColumnproducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :derivery_method_id, :integer, null: false
  end
end
