# frozen_string_literal: true
class User < ApplicationRecord
  has_many :user_groups
  has_many :groups, through: :user_groups
end
