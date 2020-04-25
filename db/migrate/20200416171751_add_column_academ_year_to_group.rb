class AddColumnAcademYearToGroup < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :academic_year, :integer
  end
end
