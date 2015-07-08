class UsersController < ApplicationController
  
  def welcome
    
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
      redirect_to '/users', :notice => "Signed up!"
    else
      render :new
    end
  end
    
  def show
    @user = User.find(params[:id])
  end
    
  def edit
    @user = User.find(params[:id])
    #form to update
  end
    
  def update
    @user = User.find(params[:id])
    @user.update_attributes(name: params[:name], email: params[:email])
    # if @item.update_attributes(params[:item])
    redirect_to '/users', notice: "The item has now been updated."
    #
    #   render 'edit'
    # end
    #edit form updates db
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password,
           :password_confirmation, :crypted_password, :salt )
  end
end
