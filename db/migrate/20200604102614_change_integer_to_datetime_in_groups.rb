class ChangeIntegerToDatetimeInGroups < ActiveRecord::Migration[6.0]

  def up
    change_column :groups, :academic_year, 'smallint USING CAST (academic_year AS smallint)'
  end
  def down
    change_column :groups, :academic_year, :integer
  end
end
