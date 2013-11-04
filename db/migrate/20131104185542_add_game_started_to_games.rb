class AddGameStartedToGames < ActiveRecord::Migration
  def change
  	add_column :games, :started, :boolean
  end
end
