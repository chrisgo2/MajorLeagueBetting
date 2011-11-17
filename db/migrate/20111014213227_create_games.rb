class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer  :league_id
      t.integer  :home_team_id
      t.integer  :away_team_id
      t.integer  :home_score
      t.integer  :away_score
      t.float    :spread
      t.float    :spread_check
      t.integer  :week
      t.datetime :start_time
      
      t.timestamps
    end
  end
end
