class CreatePurchasers < ActiveRecord::Migration[6.0]
  def change
    create_table :purchasers do |t|
      t.string :name
      t.references :purchase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
