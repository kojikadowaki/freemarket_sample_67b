class CreateSnsCredentials < ActiveRecord::Migration[5.0]
  def change
    create_table :sns_credentials do |t|
      t.references :user, foreign_key: true
      t.string :provider, null: false
      t.string :uid, null: false

      t.timestamps
    end
  end
end
