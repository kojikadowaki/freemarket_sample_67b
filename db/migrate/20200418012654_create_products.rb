class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string  :name, null: false
      t.integer :price, null: false
      t.string  :bland
      t.integer :product_status_id, null: false
      t.timestamps
    end
  end
end
