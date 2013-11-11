class Score < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  validates :user_id, presence: true
  validates :game_id, presence: true
  before_save :set_values

  def stock_net
  	self.stocks * self.game.stock
  end  

  def bond_net
  	self.bonds * self.game.bond
  end

  def real_estate_net
  	self.real_estates * self.game.real_estate
  end

  def commodity_net
  	self.commodities * self.game.commodity
  end

  def net
    self.commodity_net + 
    self.real_estate_net + 
    self.bond_net + 
    self.stock_net + 
    self.cash
  end	

  def set_values
    self.commodities ||= 0
    self.real_estates ||= 0
    self.bonds ||= 0
    self.stocks ||= 0
    self.cash ||=500
  end 

end
