class CreateProductImages < ActiveRecord::Migration[5.0]
  def change
    create_table :product_images do |t|
      t.string :url, null: false
      t.references :product, null: false, foreign_key: true
      t.timestamps
    end
  end
end
