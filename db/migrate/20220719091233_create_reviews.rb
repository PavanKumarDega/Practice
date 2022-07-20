class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :review
      t.string :reviewable_type
      t.string :reviewable_id

      t.timestamps
    end
  end
end
