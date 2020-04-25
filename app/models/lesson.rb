# Лекция (аналог поста в блоге)
class Lesson < ApplicationRecord
  # validates :title, presence: true

  belongs_to :subject, optional: true
end
