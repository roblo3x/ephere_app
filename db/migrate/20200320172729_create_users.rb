class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :last_name
      t.boolean :is_teacher
      t.boolean :is_student
      t.boolean :is_account_manager
      t.integer :group_id
      t.timestamps
    end
  end
end
