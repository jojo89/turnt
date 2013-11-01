require 'spec_helper'
  



describe "Home page" do

  before :each do
    User.create(:email => 'user@example.com', username:'jojo', :password => 'caplin', :password_confirmation => 'caplin')
  end

  it "should have the content 'Sample App'" do
    visit '/'
    expect(page).to have_content('Sell\'em')
  end


  it "should go to sign in" do
    visit '/'
      click_link("signin")
      expect(page).to have_content('Password')  
  end  

  it "should sign me in " do
    visit '/login'
      fill_in 'sessions_email',  :with => 'user@example.com'
      fill_in 'sessions_password', :with => 'caplin'
      click_button "Save Sessions"
      expect(page).to have_content 'Welcome jojo'
  end  

  it "should reroute"

end
