class CreateCustmors < ActiveRecord::Migration[6.0]
  def change
    create_table :custmors do |t|
      t.string :name

      t.timestamps
    end
  end
end
