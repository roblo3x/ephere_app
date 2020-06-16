class ChangeDataTypeInUserRoles < ActiveRecord::Migration[6.0]
  def up
    change_column :users, :role, 'boolean USING CAST(role AS boolean)'
  end
  def down
    change_column :users, :role, :string
  end
end
