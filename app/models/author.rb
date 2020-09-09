class Author < ApplicationRecord
  PASSWORD_REQUIREMENTS = /\A(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[[:^alnum:]])/x.freeze
  validates :username, presence: true, uniqueness: true
  validates :email, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
                              message: 'invalid email format' }
  validates :password, format: PASSWORD_REQUIREMENTS
  validates_associated :posts, :comments
  has_many :posts
end
