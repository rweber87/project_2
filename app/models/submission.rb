class Submission < ActiveRecord::Base
	belongs_to :user, optional: true
	has_many :comments
	has_many :votes
end
