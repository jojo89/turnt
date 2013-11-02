class UsersController < ApplicationController
  def new
   @user = User.new
  end

  def create
  p params
    @user= User.create(username: params[:user][:username],email: params[:user][:email],password: params[:user][:password],password_confirmation: params[:user][:password])
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end  
  
end
		
