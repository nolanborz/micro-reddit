class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  # Validations
  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true
end
