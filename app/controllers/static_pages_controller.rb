class StaticPagesController < ApplicationController
  def home
    @submissions = Submission.all
  end
end
