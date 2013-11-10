FactoryGirl.define do
  factory :game do |f|
  	f.name "The War Room"
  	winner
  	f.stock 1
  	f.commodity 1
  	f.real_estate 1
  	f.bond 1
  	f.started true
  end
end   
