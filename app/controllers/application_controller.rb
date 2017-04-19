class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authorize
    redirect_to '/login' unless current_user
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user, :logged_in?
end
