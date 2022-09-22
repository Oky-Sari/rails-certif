class Post < ApplicationRecord
  belongs_to :user_id
  validates :title, presence: true
  validates :content, presence: true
  validates :url, presence: true
end
