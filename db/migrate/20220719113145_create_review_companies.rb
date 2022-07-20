class CreateReviewCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :review_companies do |t|
      t.string :review
      t.string :reviewable_type
      t.integer :reviewable_id

      t.timestamps
    end
  end
end
