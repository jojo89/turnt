require 'spec_helper'
describe User do
  it { should have_many(:played_games)}
  it { should have_many(:victories)}
  it { should_not allow_value("blah").for(:email) }
  it { should_not allow_value("blah").for(:password) }
  it { should have_secure_password }
  before do 
    @user=FactoryGirl.create(:user)
    @game=FactoryGirl.create(:game, winner_id: @user.id)
    @score=FactoryGirl.create(:score, user_id: @user.id, game_id:@game.id)
  end	
  describe "#finished_games" do
    it "should return an array of finished games" do
      expect(@user.finished_games.length).to eq(1)
    end	
  end	  
end	