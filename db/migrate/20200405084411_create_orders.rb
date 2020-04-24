class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :buyer_user, null: false
      t.references :product, null: false
      t.timestamps
    end
    add_foreign_key :orders, :users, column: "buyer_user_id"
    add_foreign_key :orders, :products
  end
end
