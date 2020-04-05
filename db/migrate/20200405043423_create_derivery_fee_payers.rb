class CreateDeriveryFeePayers < ActiveRecord::Migration[5.0]
  def change
    create_table :derivery_fee_payers do |t|
      t.string :derivery_fee_payer, null: false
      t.timestamps
    end
  end
end
