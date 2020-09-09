class Comment < ApplicationRecord
  validates :comment_title, presence: true, allow_nil: true
  validates :comment_body, presence: true
  belongs_to :author
  belongs_to :post
end
