class CreateUsersAdminsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :admins, :users
  end
end
