class SessionsController < ApplicationController
  def new
    @users = User.all
  end

  def create
    @user = User.find_by(:name => params[:user][:name])
      if @user != nil && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
      end
  end
end
