class Refer < ActiveRecord::Migration[6.0]
  def change
    add_reference :rooms, :student, null: false, foreign_key: true
    add_reference :rooms, :teacher, null: false, foreign_key: true
  end
end
