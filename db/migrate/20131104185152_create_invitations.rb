class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :user_id
      t.integer :game_id
      t.boolean :started

      t.timestamps
    end
  end
end
