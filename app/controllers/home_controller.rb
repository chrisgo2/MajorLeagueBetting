class HomeController < ApplicationController
  # before_filter :new_user
  # 
  #   def new_user
  #     @user = User.new
  #   end
  
  def public
    @user = User.new
  end
  
  def private
    @title = "Home"
  end
end
