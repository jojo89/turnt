require "spec_helper"
include UserHelper

describe "finished game page" do

  before do
    @user=FactoryGirl.create(:user)
    @game=Game.create(name:"The War Room", winner_id:@user.id, stock: 1,commodity:1,real_estate:1,bond:1,started:true)
    Score.create(user_id:@user.id,game_id:@game.id,accepted:true,stocks:78,bonds:90,real_estates:89,commodities:12,cash:1)
  end 

  it "should have content username in row" do
    login	
    click_link "The War Room"
    find(".users th").should have_content("bigbucks")
  end
  it "should have content show amount of stocks" do
    login	
    click_link "The War Room"
    find(".users").should have_content("bigbucks")
  end	

end