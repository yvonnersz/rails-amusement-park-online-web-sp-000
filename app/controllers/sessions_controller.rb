class SessionsController < ApplicationController
  def new
    @users = User.all
  end

  def create
    @user = User.find_by(:name => params[:name])
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
      end
  end
end
