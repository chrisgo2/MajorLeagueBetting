class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.string :game_type
      t.integer :league_id
      t.integer :game_stat_id
      t.datetime :start_time
      t.datetime :end_time
      t.string :location

      t.timestamps
    end
  end
end
