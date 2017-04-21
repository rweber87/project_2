class User < ApplicationRecord
  has_many :comments
  has_many :submissions
  has_many :votes
  has_secure_password

  # def vote(votable, upvote)
  #   @vote = votes.where(votable: votable).first
  #   if !@vote
  #     votes.create(votable: votable, upvote: upvote)
  #   else
  #     new_vote = (@vote.upvote.to_s != upvote)
  #     unvote(votable)
  #     if new_vote
  #       votes.create(votable: votable, upvote: upvote)
  #     end
  #   end
  # end
  #
  # def unvote(votable)
  #   votes.find_by(votable: votable).try(:destroy)
  # end
  #
  # def up_or_down_voted(votable)
  #   @vote = votes.where(votable: votable).first
  #   if !@vote
  #     0
  #   elsif @vote.upvote
  #     1
  #   else
  #     -1
  #   end
  # end
  #
  # def total_karma
  #   karma = 0
  #   self.submissions.each do |submission|
  #     karma += submission.total_upvotes
  #   end
  #   karma
  # end

end
