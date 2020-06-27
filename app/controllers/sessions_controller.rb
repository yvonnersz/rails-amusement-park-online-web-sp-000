class SessionsController < ApplicationController
  def new
    @users = User.all
  end

  def create
    @user = User.find_by(:name => params[:user][:name])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
      else
        render :new
      end
  end
end
