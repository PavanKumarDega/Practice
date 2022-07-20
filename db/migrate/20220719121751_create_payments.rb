class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :paid_fee
      t.integer :total_fee

      t.timestamps
    end
  end
end
