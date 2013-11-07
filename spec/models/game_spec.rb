require 'spec_helper'

describe Game do
  it {should have_many(:scores)}
  it {should have_many(:players)}
  it {should belong_to(:winner)}

  describe "#two_players" do
    before do
      @game=FactoryGirl.create(:game) 
    end
    it "should return false if there less than two players" do
      expect(@game.two_players).to eq(false)
    end    
  end
end