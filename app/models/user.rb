class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :posts, dependent: :destroy
  validates :nickname, presence: true
  validates :nickname, length: { maximum: 50 }
end
