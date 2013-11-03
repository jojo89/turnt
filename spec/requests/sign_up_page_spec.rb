require 'spec_helper'
include UserHelper

describe "sign up page" do

  it "should sign me up" do 
    sign_up
    expect(page).to have_content 'Welcome ukubucks'
  end

  it "should show username is too short error" do
  	  go_to_sign_up
      fill_in 'user_email',with: "a@b.com"
      fill_in 'user_username', with: "barb"
      fill_in "user_password", with: "password"
      click_button "Create User"
      expect(page).to have_content 'username is too short (minimum is 5 characters)'
  end	

  it "should show password is too short error" do
    go_to_sign_up
    fill_in 'user_email',with: "a@b.com"
    fill_in 'user_username', with: "barba"
    fill_in "user_password", with: "pass"
    click_button "Create User"
    expect(page).to have_content 'password is too short (minimum is 5 characters)'
  end 

  it "should show email is in the wrong format error" do
    go_to_sign_up
    fill_in 'user_email',with: "a@bom"
    fill_in 'user_username', with: "barba"
    fill_in "user_password", with: "password"
    click_button "Create User"
    expect(page).to have_content 'email is invalid'
  end




end  