class HomeController < ApplicationController
  # before_filter :new_user
  # 
  #   def new_user
  #     @user = User.new
  #   end
  
  def public

  end
  
  def private
    
    if !signed_in?
      cookies.delete(:remember_token)
      redirect_to public_root_path
    end
    
    @title = "Home"
  end
end
