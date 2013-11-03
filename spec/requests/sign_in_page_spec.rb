require "spec_helper"
include UserHelper

describe 'the sign in page' do
  
  before do
    FactoryGirl.create(:user)
  end

  it "should sign me in " do
    go_to_login
    fill_in 'sessions_email',  :with => 'r@gmail.com'
    fill_in 'sessions_password', :with => 'password'
    click_button "Save Sessions"
    expect(page).to have_content 'Welcome bigbucks'
  end
  
  
  it "should say no registered email under that address" do
    go_to_login
      fill_in 'sessions_email',  :with => 'user@example.com'
      fill_in 'sessions_password', :with => 'caplin'
      click_button "Save Sessions"
      expect(page).to have_content 'no registered email under that address'
  end  

  it 'should say Incorrect Password' do
    go_to_login
    fill_in 'sessions_email',  :with => 'r@gmail.com'
    fill_in 'sessions_password', :with => 'passwords'
    click_button "Save Sessions"
    expect(page).to have_content 'Incorrect Password'
  end  

end
