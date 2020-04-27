# frozen_string_literal: true

class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.integer :subject_id
      t.text :body

      t.timestamps
    end
  end
end
