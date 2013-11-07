FactoryGirl.define do 
	factory :score do |f|
		f.turn true
		game
		user
		f.stocks 2
		f.bonds 4
		f.real_estates 5
		f.commodities 9
		f.cash 4
		f.accepted true
    end
end	
 