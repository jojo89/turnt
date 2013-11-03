require 'spec_helper'
include UserHelper

describe "sign up page" do

  it "should sign me up" do 
    sign_up
    expect(page).to have_content 'Welcome ukubucks'
  end

  it "should redirect to the sign up page if there any errors" do
  	  go_to_sign_up
      fill_in 'user_email',with: "barb"
      fill_in 'user_username', with: "a@b.com"
      fill_in "user_password", with: "password"
      click_button "Create User"
      expect(page).to have_content 'Sign Up to Play'
  end	



end  