class CreateGameBetsH2hs < ActiveRecord::Migration
  def change
    create_table :game_bets_h2hs do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :team_id
      t.integer :wager
      t.boolean :status
      t.boolean :won_or_lost


      t.timestamps
    end
  end
end
