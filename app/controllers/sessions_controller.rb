class SessionsController < ApplicationController
  
  def create
  user = User.authenticate(params[:session][:username],
                           params[:session][:password])
  if user.nil?
    # Create an error message and re-render the signin form.
  else
    # Sign the user in and redirect to the user's show page.
  end
end
  
end
