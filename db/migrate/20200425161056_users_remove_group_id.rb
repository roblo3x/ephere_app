class UsersRemoveGroupId < ActiveRecord::Migration[6.0]
  def up
    remove_column :users, :group_id
    remove_column :users, :password
  end
end
