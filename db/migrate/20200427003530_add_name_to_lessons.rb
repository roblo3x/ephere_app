class AddNameToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :name, :string
  end
end
