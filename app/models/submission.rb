class Submission < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :votes

	def total_upvotes
    votes.where(upvote: true).count - votes.where(upvote: false).count
  end

  def update_score(gravity = 1.8)
    votes = self.total_upvotes
    age = Time.diff(Time.now, self.created_at)[:hour]
    score = (votes + 1) / (age + 2) ** gravity * 1000
    self.update_attribute(:score, score)
  end

  def Submission.update_scores
    Submission.all.each do |submission|
      submission.update_score()
    end
  end

end
