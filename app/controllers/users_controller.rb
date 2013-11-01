class UsersController < ApplicationController
  def new
   @user = User.new
  end

  def create
    User.create(username: params[:user][:username],email: params[:user][:email],password: params[:user][:password])
    redirect_to root_path
  end
  
end
		