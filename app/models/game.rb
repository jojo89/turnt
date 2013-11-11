class Game < ActiveRecord::Base
  has_many :scores
  has_many :players, through: :scores, source: :user
  belongs_to :winner, class_name: "User"
  before_save :set_values

  def two_players
    self.players.length  >= 2
  end

  def set_values
  	self.commodity ||= 0
  	self.real_estate ||= 0
  	self.bond ||= 0
  	self.stock ||= 0
  end	
  
end
