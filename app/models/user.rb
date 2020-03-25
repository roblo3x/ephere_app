class User < ApplicationRecord
  has_one :group, through: :user_group
end
