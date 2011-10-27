class ModifyStatsTable < ActiveRecord::Migration
  def up
    remove_column :football_team_stats, :winner_id
    remove_column :football_team_stats, :loser_id
    add_column :games, :winner_id,      :integer
    add_column :games, :loser_id,       :integer
    add_column :games, :winner_points,  :integer
    add_column :games, :loser_points,   :integer
  end

  def down
  end
end
