class ScoresController < ApplicationController
  def new
  end	


  def create
    Score.create(game_id:params["game_id"],user_id:params["user_id"])
    redirect_to game_path(params["game_id"])
  end

  def update
    @game= Game.find(params[:game_id])
    @score= Score.find(params[:id])
    @score.update_attributes(accepted: true)
    redirect_to game_path(@game.id)
  end



end