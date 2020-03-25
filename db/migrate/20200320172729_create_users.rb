class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.integer :type_of_user

      t.timestamps
    end
  end
end
