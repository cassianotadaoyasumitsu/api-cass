class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product
      t.references :purchaser, null: false, foreign_key: true
      t.references :purchase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
