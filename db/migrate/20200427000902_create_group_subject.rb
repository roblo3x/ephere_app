# frozen_string_literal: true

class CreateGroupSubject < ActiveRecord::Migration[6.0]
  def change
    create_table 'group_subjects', force: :cascade do |t|
      t.integer 'group_id'
      t.integer 'subject_id'
      t.timestamps
    end
  end
end
