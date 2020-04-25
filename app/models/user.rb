# frozen_string_literal: true
class User < ApplicationRecord
  validates :name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  # validates :kind, presence: true
  validates :password, presence: true, length: { minimum: 10 }

  has_many :user_groups
  has_many :groups, through: :user_groups
end
