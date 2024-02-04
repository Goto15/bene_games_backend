class CreateGameRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :game_requests do |t|
      t.string :requested_game
      t.string :requester
      t.string :reward_type

      t.timestamps
    end
  end
end
