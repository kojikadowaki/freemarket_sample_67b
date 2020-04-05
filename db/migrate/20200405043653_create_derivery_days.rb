class CreateDeriveryDays < ActiveRecord::Migration[5.0]
  def change
    create_table :derivery_days do |t|
      t.integer :derivery_day, null: false
      t.timestamps
    end
  end
end
