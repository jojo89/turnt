FactoryGirl.define do
  factory :user do |f|
  	f.password "password"
  	f.password_confirmation "password"
  	f.email "r@gmail.com"
  	f.username "bigbucks"
  end
end   	
