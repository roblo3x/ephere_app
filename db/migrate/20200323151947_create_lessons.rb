class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.text :description
      t.integer :type_of_user
      t.string :link
      t.datetime :date

      t.timestamps
    end
  end
end
