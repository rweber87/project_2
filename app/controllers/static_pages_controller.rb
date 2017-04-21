class StaticPagesController < ApplicationController
  def home
    @submissions = Submission.all.each_with_object({}) do |submission, new_hash|
			new_hash[submission.id] = Vote.where(:submission_id => submission.id).sum(:upvote)
		end.sort_by {|key, value| value}.reverse.to_h.keys.map {|key| Submission.find(key)}
  end
end
