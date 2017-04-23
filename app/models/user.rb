class User < ApplicationRecord
  has_many :comments
  has_many :submissions
  has_many :votes
  has_secure_password
end
