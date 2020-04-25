class Group < ApplicationRecord
  validates :name, presence: true
  validates :academic_year, presence: true, numericality: true

  has_many :user_groups
  has_many :users, through: :user_groups
  has_many :group_subjects
  has_many :subjects, through: :group_subjects
end

#remove_column :table_name, :column_name