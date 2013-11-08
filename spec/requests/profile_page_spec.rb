require 'spec_helper'
include UserHelper

describe "profile page" do


  before do 
    @user=FactoryGirl.create(:user)
  
  end 

  it "should put unfinished games on the unfinished list" do
    @game=FactoryGirl.create(:game, winner_id: 1)
    @score=FactoryGirl.create(:score, user_id: @user.id, game_id: @game.id)
    login
    find('#finished').should have_content('The War Room')
  end

  it "should put ongoing games on the ongoing list" do
    @game=FactoryGirl.create(:game, winner_id: nil)
    @score=FactoryGirl.create(:score, user_id: @user.id, game_id: @game.id)
    login
    find('#ongoing').should have_content('The War Room')
  end

  it "should put requests on the requests list" do
    @game=FactoryGirl.create(:game, winner_id: nil)
    @score=FactoryGirl.create(:score, user_id: @user.id, game_id: @game.id,accepted: false)
    login
    find('#requests').should have_content('The War Room')
  end  

  it "should sign me in " do
    login
    expect(page).to have_content 'Welcome bigbucks'
  end


  



end  