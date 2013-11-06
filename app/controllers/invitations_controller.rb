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
      p @invitation.user.id
      redirect_to user_score_path(id: @invitation.user.id)
      # redirect_to :controller=>'scores',:action=>'create'
	end	
end
