class SessionsController < ApplicationController
  def create
    user = login(params[:email], params[:password], params[:remember_me])
    if user
      auto_login(user)
      redirect_to "/", :notice => "Logged in!"
      # redirect_back_or_to "/users", 
    else
      flash.now.alert = "Email or password was invalid"
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url, :notice => "Logged out!"
  end
  
  
end
