class CreateGroupSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :group_subjects do |t|
      t.integer :group_id
      t.integer :subject_id

      t.timestamps
    end
  end
end

#rails db:drop db:create db:migrate db:seed