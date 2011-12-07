class UsersController < ApplicationController

  
  def index
    
  end
  
  def new
    @title = "Sign Up"
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Major League Betting."
      redirect_to user_root_path
    else
      @title = "Sign Up"
      render "new"
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile Image Updated!"
      redirect_to user_root_path
    end
  end
    
  def edit
    @title = "Edit user"
  end  
    
end
