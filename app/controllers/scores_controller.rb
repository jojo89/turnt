class ScoresController < ApplicationController
  def new
  end	


  def create
  end

  def update
    @game= Game.find(params[:game_id])
    @score= Score.find(params[:id])
    @score.update_attributes(accepted: true)
    redirect_to user_path(@score.user_id)
  end	


end