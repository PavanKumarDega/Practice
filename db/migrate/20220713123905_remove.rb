class Remove < ActiveRecord::Migration[6.0]
  def change
    change_table :employees do |t|
    t.remove :project_id
  end
  end
end
