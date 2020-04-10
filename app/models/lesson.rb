class Lesson < ApplicationRecord
  belongs_to :subject, optional: true
end
