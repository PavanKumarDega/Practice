class CreateMettings < ActiveRecord::Migration[6.0]
  def change
    create_table :mettings do |t|
      t.string :time
      t.references :project, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
