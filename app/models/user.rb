class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :comments

  # Validations
  validates :name, presence: true, length: { minimum: 2, maximum: 50 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, if: :password_digest_changed?
end
