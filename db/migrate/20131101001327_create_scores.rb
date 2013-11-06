class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.boolean :turn
      t.integer :user_id
      t.integer :game_id
      t.integer :stocks
      t.integer :bonds
      t.integer :real_estates
      t.integer :commodities
      t.integer :cash
      t.boolean :accepted
      t.timestamps
    end
  end
end
