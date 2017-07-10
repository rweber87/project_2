class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:username])
    # byebug
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash.now[:danger] = 'Invalid username/password combination.'
      render :new
    end
  end

  def fb_create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
