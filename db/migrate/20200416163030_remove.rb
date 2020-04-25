class Remove < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :is_account_manager
    remove_column :users, :is_student
    remove_column :users, :is_teacher

    add_column :users, :kind, :string
    add_column :users, :password, :string
  end
end
