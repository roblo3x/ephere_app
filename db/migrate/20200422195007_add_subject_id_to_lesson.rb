class AddSubjectIdToLesson < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :subject_id, :integer
  end
end
