class Game < ActiveRecord::Base
  has_many :scores
  has_many :players, through: :scores, source: :user
  belongs_to :winner, class_name: "User"
end
