class SessionsController < ApplicationController
  def create 
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.user_id
    redirect_to root_url
end
