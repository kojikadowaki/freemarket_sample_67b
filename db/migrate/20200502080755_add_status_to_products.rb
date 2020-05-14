class AddStatusToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :status, :string, default: "出品中"
  end
end
