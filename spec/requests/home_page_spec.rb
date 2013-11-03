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
      click_link("Login")
      expect(page).to have_content('Please enter your email and password')  
  end  

  it "should go to sign up" do
    visit '/'
      click_link("Sign Up")
      expect(page).to have_content('Sign Up to Play')  
  end  



end
