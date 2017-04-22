class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = session[:user_id]
    if @comment.save
      redirect_to submission_path(@comment.submission)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :submission_id)
  end

end
