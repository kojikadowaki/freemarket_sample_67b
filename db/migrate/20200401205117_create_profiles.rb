class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name, null: false
      t.string :family_name, null: false
      t.string :first_name_kana, null: false
      t.string :family_name_kana, null: false
      t.integer :birth_year, null: false
      t.integer :birth_month, null: false
      t.string :avatar
      t.references :user
      t.timestamps
    end
  end
end
