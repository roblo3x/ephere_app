# Учебная группа, например ИВТ-5.5-07
class Group < ApplicationRecord
  validates :name, presence: true
  validates :academic_year, presence: true, numericality: true

  has_many :user_groups
  has_many :users, through: :user_groups
  has_many :group_subjects
  has_many :subjects, through: :group_subjects
end
