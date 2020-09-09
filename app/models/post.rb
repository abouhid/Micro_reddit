class Post < ApplicationRecord
  validates :title, length: { in: 8..50, message: 'Title should have between 8 and 50 characters.' }
  validates :body, length: { in: 50..500, message: 'Body should have between 50 and 500 characters.'}
  belongs_to :author
  has_many :comments
end
