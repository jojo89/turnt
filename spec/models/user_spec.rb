require 'spec_helper'
describe User do
  it { should have_many(:played_games)}
  it { should have_many(:victories)}
  it { should_not allow_value("blah").for(:email) }
  it { should_not allow_value("blah").for(:password) }
  it { should have_secure_password }
  it { should ensure_length_of(:username).is_at_least(5)}
  it { should ensure_length_of(:password).is_at_least(5)}

  before do 
	@user=FactoryGirl.create(:user)
  end

  describe "#finished_games" do
	before do 
	  @game=FactoryGirl.create(:game, winner_id: @user.id)
	  @score=FactoryGirl.create(:score, user_id: @user.id, game_id: @game.id)
	end	
	it "should return an array of finished scores" do
	  expect(@user.finished_games.length).to eq(1)
	end
    it "These score's games should have a winner id" do
      expect(@user.finished_games.sample.game.winner_id).to be > 0 
    end	
    it "Theses scores should have been accepted " do
      expect(@user.finished_games.sample.accepted).to eq(true)
    end  
  end	

  describe "#ongoing" do

    before do 
	  @game=FactoryGirl.create(:game, winner_id: nil)
	  @score=FactoryGirl.create(:score, user_id: @user.id, game_id: @game.id)
	end	

    it "should return an array of finished scores" do
	  expect(@user.ongoing.length).to eq(1)
	end

	it "These score's games should have a winner id" do
      expect(@user.ongoing.sample.game.winner_id).to eq(nil) 
    end

    it "Theses scores should have been accepted " do
      expect(@user.ongoing.sample.accepted).to eq(true)
    end  
  end	
end	