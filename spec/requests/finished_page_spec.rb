require "spec_helper"
include UserHelper

describe "finished game page" do

  before do
    @user=FactoryGirl.create(:user)
    @game=Game.create(name:"The War Room", winner_id:@user.id, stock: 1,commodity:1,real_estate:1,bond:1,started:true)
    Score.create(user_id:@user.id,game_id:@game.id,accepted:true,stocks:78,bonds:90,real_estates:89,commodities:12,cash:1)
  end 

  it "should have content Players in row" do
    login	
    click_link "The War Room"
    find(".users th:nth-child(2)").should have_content("bigbucks")
  end
  it "should have content username in row" do
    login	
    click_link "The War Room"
    find(".users th:first-child").should have_content("Players")
  end
  it "should have content show amount of stocks" do
    login	
    click_link "The War Room"
    find(".score").should have_content(78)
  end	  
  it "should have content show amount of bonds" do
    login	
    click_link "The War Room"
    find(".bond").should have_content(90)
  end	
  it "should have content show amount of real_estates" do
    login 
    click_link "The War Room"
    find(".real_estate").should have_content(89)
  end 
  it "should have content show amount of commodities" do
    login 
    click_link "The War Room"
    find(".commodity").should have_content(12)
  end 
  it "should have total amount of cash" do
    login
    click_link "The War Room"
    find(".cash").should have_content(1)
  end 
  it "should have net worth in net row" do
    login
    click_link "The War Room"
    find(".net").should have_content(270)
  end  

end