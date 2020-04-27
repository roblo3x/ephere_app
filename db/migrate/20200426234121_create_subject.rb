# frozen_string_literal: true

class CreateSubject < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :title
      t.timestamps
    end
  end
end
