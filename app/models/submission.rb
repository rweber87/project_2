class Submission < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	# has_many :votes, through: :user
end
