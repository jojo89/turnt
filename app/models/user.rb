class User < ActiveRecord::Base
  has_many :scores
  has_many :played_games, through: :scores, source: :game
  has_many :victories, class_name: "Game", foreign_key: :winner_id
  validates :username, length: { minimum: 5 }
  validates :password, length: { minimum: 5 }
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  has_secure_password



  def finished_games
  	finished_gs=[]
    self.scores.each do |s|
      if s.game.winner_id != nil
      	finished_gs << s
      end	
    end
    finished_gs
  end	

  def ongoing
    ogames=[]
    self.scores.each do |s|
      if s.game.winner_id == nil
        ogames << s
      end 
    end
    ogames
  end  

end
