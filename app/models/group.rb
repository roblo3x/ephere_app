class Group < ApplicationRecord
  has_many :user_groups
  has_many :users, through: :user_groups
  has_many :group_subjects
  has_many :subjects, through: :group_subjects
end
