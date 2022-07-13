class CreateCeos < ActiveRecord::Migration[6.0]
  def change
    create_table :ceos do |t|
      t.string :name
      t.string :company_name

      t.timestamps
    end
  end
end
