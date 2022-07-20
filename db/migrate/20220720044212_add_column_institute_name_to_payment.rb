class AddColumnInstituteNameToPayment < ActiveRecord::Migration[6.0]
  def change
    add_column :payments, :institute_name, :string
  end
end
