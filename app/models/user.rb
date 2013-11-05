class User < ActiveRecord::Base
  has_many :scores
  has_many :played_games, through: :scores, source: :game
  has_many :victories, class_name: "Game", foreign_key: :winner_id
  has_many :invitations
  validates :username, length: { minimum: 5 }
  validates :password, length: { minimum: 5 }
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  has_secure_password
end
