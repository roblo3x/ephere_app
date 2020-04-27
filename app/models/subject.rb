# frozen_string_literal: true

# Предмет (учебная дисциплина)
class Subject < ApplicationRecord
  has_many :group_subjects
  has_many :groups, through: :group_subjects
  has_many :lessons
end
