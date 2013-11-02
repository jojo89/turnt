module UserHelper

  def sign_up
	visit root_path
	 click_link "sign up"
	 fill_in 'user_email', with:"jojo89@gmail.com"
	 fill_in 'user_password', with: 'numberone'
	 fill_in "user_username",with: 'ukubucks'
	 click_button "Create User"
  end 

end