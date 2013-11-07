require 'spec_helper'

describe Score do

  it { should belong_to(:user) }
  it { should belong_to(:game) }	
  it { should validate_presence_of(:user_id)}
  it { should validate_presence_of(:game_id)}
end



  


	
  

