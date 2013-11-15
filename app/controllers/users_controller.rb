class UsersController < ApplicationController
  def new
   @user = User.new
  end

  def create
    @user= User.new(username: params[:user][:username],email: params[:user][:email],password: params[:user][:password],password_confirmation: params[:user][:password])
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render template: "users/new"
    end  
  end

  def show
    p params
    @user = User.find(params[:id])
    @ongoing = @user.ongoing
    @requests = @user.scores.where(accepted: false)
    @finished =@user.finished_games
    @scores = @user.scores
    p @scores
  end  

  def search
    @game = Game.find(params["game"])
    @players = @game.players
    @users = User.where(username:params[:username])
  
  end  
  
end
		
