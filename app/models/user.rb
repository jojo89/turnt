class User < ActiveRecord::Base
  has_many :scores
  has_many :games, through: :scores
  validates :username, length: { minimum: 5 }
  validates :password, length: { minimum: 5 }
  has_secure_password
end
