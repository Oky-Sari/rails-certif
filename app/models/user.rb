class User < ApplicationRecord
  has_many :comments
  has_many :posts
  validates :nickname, length: { maximum: 50 }
end
