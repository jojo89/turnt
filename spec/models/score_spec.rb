require 'spec_helper'

describe Score do

  it { should belong_to(:user) }
  it { should belong_to(:game) }	
  it { should validate_presence_of(:user_id)}
  it { should validate_presence_of(:game_id)}
  before do 
    @user= FactoryGirl.create(:user)
    @game= FactoryGirl.create(:game)
    @score= FactoryGirl.create(:score)
  end	

  describe "#stock_net" do
  	it "should return the total value of a scores stocks" do
      expect(@score.stock_net).to eq(2)
  	end 
  end
  describe "#bond_net" do
  	it "should return the total value of a scores bonds" do
      expect(@score.bond_net).to eq(4)
  	end 
  end  
  describe "#commodity_net" do
  	it "should return the total value of a scores commodities" do
       expect(@score.commodity_net).to eq(9) 
  	end 
  end  
  describe "#real_estate_net" do
  	it "should return the total value of a scores real_estate" do
       expect(@score.real_estate_net).to eq(5)     
  	end 
  end  
  describe "#net" do
  	it "should return the total value of all assets" do
      expect(@score.net).to eq(24)
  	end 
  end	
end



  


	
  

