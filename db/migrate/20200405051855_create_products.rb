class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.text :description, null:false
      t.references :size, null: false, foreign_key: true
      t.references :ship_from_location, foreign_key: true
      t.references :product_condition, foreign_key: true
      t.references :derivery_fee_payer, foreign_key: true
      t.references :derivery_day, foreign_key: true
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
