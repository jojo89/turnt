class InvitationsController < ApplicationController
	def show
      @game= Game.find(params[:game_id])
      @invitation=Invitation.find(params[:id])
      @players=@game.players
	end	

	def update
      @game= Game.find(params[:game_id])
      @invitation=Invitation.find(params[:id])
      @invitation.update_attributes(started: true)
      Score.create(user_id: @invitation.user_id, Game.id)
      redirect_to game_scores_path(@invitation.user.id)
      # redirect_to :controller=>'scores',:action=>'create'
	end	
end
