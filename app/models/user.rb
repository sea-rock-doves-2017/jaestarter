class User < ApplicationRecord
  has_many :projects, foreign_key: 'creator_id'

  validates :name, :email, presence: true
  validates :email, uniqueness: true
  has_secure_password
end
