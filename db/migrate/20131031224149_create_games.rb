class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :winner_id
      t.integer :stock
      t.integer :commodity
      t.integer :real_estate
      t.integer :bond
      t.timestamps
    end
  end
end
