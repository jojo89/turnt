class GamesController < ApplicationController
  def index
   @games =Game.where(name: params['q'])
   
  end	

  def show
    @game=Game.find(params[:id])
    @players=@game.players
    @user=@players.first
  end	

  def new
  	@game= Game.new
  end

  def create
    @game=Game.create(name: params[:name])
    @user= current_user
    @score=Score.create(user_id:@user.id, game_id:@game.id )
    redirect_to(game_path(@game))
  end  

  def search
    
  end	
  
end	
