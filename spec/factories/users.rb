FactoryGirl.define do
  factory :user, aliases:[:winner] do |f|
  	f.password "password"
  	f.password_confirmation "password"
  	f.email "r@gmail.com"
  	f.username "bigbucks"
  end

  factory :fuser do |f|
    f.password "password"
  	f.password_confirmation "password"
  	f.email Faker::Internet.email
  	f.username Faker::Internet.user_name
   end
end   	
