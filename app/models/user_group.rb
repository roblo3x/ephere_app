class UserGroup < ApplicationRecord
  has_one :user
  belongs_to :group
end
