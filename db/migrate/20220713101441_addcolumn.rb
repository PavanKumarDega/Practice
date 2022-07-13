class Addcolumn < ActiveRecord::Migration[6.0]
  def change
    add_reference :employees, :project, null: false, foreign_key: true
    add_reference :employees, :manager, null: false, foreign_key: true
    add_reference :managers, :project, null: false, foreign_key: true
  end
end
