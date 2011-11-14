class UsersController < ApplicationController
  def index
    
  end
  
  def new
    @title = "Sign Up"
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Major League Betting."
      redirect_to user_root_path
    else
      @title = "Sign Up"
      render "new"
    end
  end
end
