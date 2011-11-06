class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Major League Betting."
      redirect_to user_root_path
    else
      flash.now[:error] = "Please fill in fields."
    end
  end
end
