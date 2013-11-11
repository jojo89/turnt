class GamesController < ApplicationController
  def index
   @games =Game.where(name: params['q'])
   
  end	

  def show
    @game=Game.find(params[:id])
    @players=@game.players
    
  end	

  def new
  	@game= Game.new
  end

  def create
    @game=Game.create(name: params[:name])
    @user= current_user
    @score=Score.create(user_id:@user.id, game_id:@game.id )
    redirect_to(user_path(@user))
  end  

  def search
    
  end	
  
end	
