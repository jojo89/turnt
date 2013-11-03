class UsersController < ApplicationController
  def new
   @user = User.new
  end

  def create
    @user= User.new(username: params[:user][:username],email: params[:user][:email],password: params[:user][:password],password_confirmation: params[:user][:password])
    if @user.save
      puts "ccccccccccccccccccccccccccc"
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      puts "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
      render template: "users/new"
    end  
  end

  def show
    @user = User.find(params[:id])
  end  
  
end
		
