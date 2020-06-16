class AddEditorToLesson < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :editor_field, :json
  end
end
