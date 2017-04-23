class User < ApplicationRecord
  has_many :comments
  has_many :submissions
  has_many :votes
  has_secure_password
  validates :image, :presence => true, :uniqueness => true, allow_nil: true
end
