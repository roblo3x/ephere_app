class ChangeDataTypeInUserRoles < ActiveRecord::Migration[6.0]
  def up
    change_column :users, :role, :boolean, default: false
  end
  def down
    change_column :users, :role, :string
  end
end
