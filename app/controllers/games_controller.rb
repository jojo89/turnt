class GamesController < ApplicationController
  def index
   @games =Game.where(name: params['q'])
   
  end	

  def search
    
  end	
end	
