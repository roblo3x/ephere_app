# frozen_string_literal: true

class Init < ActiveRecord::Migration[6.0]
  def change
    create_table 'lessons' do |t|
      t.string 'title', null: false, comment: 'Название урока'
      # t.text "description", comment: "Описание урока"
      t.text 'body', comment: 'Текст урока'

      t.timestamps
    end

    create_table 'group_subjects' do |t|
      t.integer 'group_id'
      t.integer 'subject_id'
      t.datetime 'created_at', precision: 6, null: false
      t.datetime 'updated_at', precision: 6, null: false
    end

    create_table 'groups' do |t|
      t.string 'name'
      t.datetime 'created_at', precision: 6, null: false
      t.datetime 'updated_at', precision: 6, null: false
    end

    create_table 'subjects' do |t|
      t.string 'name'
      t.datetime 'created_at', precision: 6, null: false
      t.datetime 'updated_at', precision: 6, null: false
    end

    create_table 'user_groups' do |t|
      t.integer 'user_id'
      t.integer 'group_id'
      t.datetime 'created_at', precision: 6, null: false
      t.datetime 'updated_at', precision: 6, null: false
    end

    create_table 'users' do |t|
      t.string 'email'
      t.string 'name'
      t.string 'last_name'
      t.boolean 'is_teacher'
      t.boolean 'is_student'
      t.boolean 'is_account_manager'
      t.integer 'group_id'
      t.datetime 'created_at', precision: 6, null: false
      t.datetime 'updated_at', precision: 6, null: false
    end
  end
end
