class CreateCoursesPaymentsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :courses, :payments
  end
end
