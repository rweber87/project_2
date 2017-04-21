class VotesController < ApplicationController


    def user_vote
      submission_id = params[:id].split("_").first
      vote_value = params[:id].split("_").last
      vote = Vote.find_by(:user_id => session[:user_id], :submission_id => submission_id)

      if vote.nil?
        vote = Vote.create(:user_id => session[:user_id], :submission_id => submission_id, :upvote => vote_value)
        flash[:notice] = "Successfully voted...'murica'"
        redirect_to submission_path(submission_id)
      elsif vote.upvote.to_i == vote_value.to_i
        flash[:notice] = "You already voted for this article"
        redirect_to submission_path(submission_id)
      else
        vote.update(upvote: vote_value)
        flash[:notice] = "You changed your vote...'murica'"
        redirect_to submission_path(submission_id)
      end

    end
  end
