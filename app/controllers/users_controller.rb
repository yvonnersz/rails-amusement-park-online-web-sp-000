class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to "/users/#{@user.id}"
  end

  def index
  end

  def show
    @user = User.find_by(:id => params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :happiness, :nausea, :height, :tickets, :admin)
  end
end
