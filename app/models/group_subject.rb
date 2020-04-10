class GroupSubject < ApplicationRecord
  belongs_to :group
  belongs_to :subject
end
