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
        @error="Incorrect Password"
        render template: "sessions/new"
      end    
    else
      @error="no registered email under that address"
      render template: "sessions/new"
    end     
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end  


end  
