class CreateFootballTeamStats < ActiveRecord::Migration
  def change
    create_table :football_team_stats do |t|
      t.integer :winner_id
      t.integer :loser_id

      t.timestamps
    end
  end
end
