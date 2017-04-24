class SubmissionsController < ApplicationController
	before_action :authorize, except: [:index, :show, :create, :destroy]

	def index
		@submissions = Submission.all.each_with_object({}) do |submission, new_hash|
			new_hash[submission.id] = Vote.where(:submission_id => submission.id).sum(:upvote)
		end.sort_by {|key, value| value}.reverse.to_h.keys.map {|key| Submission.find(key)}
	end

	def show
		@submission = Submission.find(params[:id])
		@comment = Comment.new
		@votes = Vote.where(:submission_id => @submission.id).sum(:upvote)
	end

	def new
		@submission = Submission.new
	end

	def create
		page = MetaInspector.new(submission_params[:url])
		img = page.images.best
		@submission = Submission.new(
			image: img,
			title: page.meta_tag["property"]["og:title"],
			description: page.meta_tag["property"]["og:description"],
			user_id: session[:user_id]
			)
		if @submission.save
			redirect_to edit_submission_path(@submission)
		else
			render 'new'
		end
	end

	def edit
		@submission = Submission.find(params[:id])
	end

	def update
		@submission = Submission.find(params[:id])
		if @submission.update(submission_params)
			redirect_to submission_path(@submission)
		else
			render 'edit'
		end
	end

	def destroy
		Submission.find(params[:id]).destroy
		flash[:success] = "POST DELETED...How could you?"
		redirect_to root_path
	end

	private

	def submission_params
		params.require(:submission).permit( :url, :user_id)
	end


end
