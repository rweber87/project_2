class VotesController < ApplicationController

  def thumbsup
    vote = Vote.find_or_create_by(:user_id => session[:user_id], :submission_id => params[:id])
    if vote.upvote == -1 || nil
      vote.upvote += 1
    end
  end

  def thumbsdown
    vote = Vote.find_or_create_by(:user_id => session[:user_id], :submission_id => params[:id])
    if vote.upvote == 1 || nil
      vote.upvote -= 1
    end
  end

#   def create
#   @votable = Submission.find(params[:votable_id])
#   current_user.vote(@votable, params[:upvote])
#   respond_to do |format|
#     format.html { redirect_to @user }
#     format.js
#   end
# end
#
# def destroy
#   @vote = Vote.find(params[:id]).votable
#   current_user.unvote(@vote)
#   respond_to do |format|
#     format.html { redirect_to @user }
#     format.js
#   end
# end
#
#   def destroy
#
#   end
end
