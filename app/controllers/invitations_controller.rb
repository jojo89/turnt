class InvitationsController < ApplicationController
	def show
      @game= Game.find(params[:game_id])
      @invitation=Invitation.find(params[:id])
      @players=@game.players
	end	

	def update
      @game= Game.find(params[:game_id])
      @invitation=Invitation.find(params[:id])
      @invitation.update_attributes(started)
	end	
end
