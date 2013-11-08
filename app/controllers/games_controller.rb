class GamesController < ApplicationController
  def index
   @games =Game.where(name: params['q'])
   
  end	

  def show
    @game=Game.find(params[:id])
    @players=@game.players
    
  end	

  def search
    
  end	
  
end	
