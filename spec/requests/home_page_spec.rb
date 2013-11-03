require 'spec_helper'
include UserHelper

describe "Home page" do

  before do
    FactoryGirl.create(:user)
  end  

  it "should have the content 'Sell\'em High" do
    visit '/'
    expect(page).to have_content('Sell\'em High')
  end

  it "should have the content 'Sign Up" do
    visit '/'
    expect(page).to have_content('Sign Up')
  end

  it "should have the content 'Login" do
    visit '/'
    expect(page).to have_content('Login')
  end

  it "should go to sign in" do
    visit '/'
      click_link("signin")
      expect(page).to have_content('Password')  
  end  

  
 it "should sign me in " do
    visit '/login'
      fill_in 'sessions_email',  :with => 'r@gmail.com'
      fill_in 'sessions_password', :with => 'password'
      click_button "Save Sessions"
      expect(page).to have_content 'Welcome bigbucks'
  end



  it "should reroute to the same page" do
    visit '/login'
      fill_in 'sessions_email',  :with => 'user@example.com'
      fill_in 'sessions_password', :with => 'caplin'
      click_button "Save Sessions"
      expect(page).to have_content 'Email'
  end  





end
