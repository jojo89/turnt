class SessionsController < ApplicationController
  def new
    @user=User.new
  end

  def create
    
    @user= User.find_by_email(params['sessions']['email'])
    if @user 
      if @user.authenticate(params[:sessions][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
      else
        redirect_to login_path
      end    
    else
      redirect_to login_path
    end     
  end

  def destroy
    current_user = nil
    redirect_to root_path
  end  


end  
