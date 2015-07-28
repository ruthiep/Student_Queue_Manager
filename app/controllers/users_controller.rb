class UsersController < ApplicationController
  
  def welcome
    if (current_user)
      redirect_to '/questions'
    end
  end
  
  def index
    @users = User.all
  end 
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_to '/questions', :notice => "Signed up!"
    else
      render :new
    end
  end
    
  def show
    @user = User.find(params[:id])
  end
    
  def edit
    @user = User.find(params[:id])
    if (current_user.id != @user.id)
      redirect_to '/users', :notice => "You can only edit your own information."
    end
    #form to update
  end
    
  def update
    @user = User.find(params[:id])
  
    @user.update_attributes(user_params)
     if (@user.update_attributes(user_params))
       redirect_to '/users', notice: "The item has now been updated."
     else
        render '/edit', notice: "Please try again."
    end
    #edit form updates db
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password,
           :password_confirmation, :crypted_password, :salt )
  end
end
