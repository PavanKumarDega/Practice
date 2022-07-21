class CreateSells < ActiveRecord::Migration[6.0]
  def change
    create_table :sells do |t|
      t.integer :no_of_items
      t.references :admin, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
