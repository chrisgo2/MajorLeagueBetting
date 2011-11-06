class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer  :league_id
      t.string   :conference
      t.string   :division
      t.string   :name
      t.string   :short_name
      t.string   :logo_path
      t.integer  :wins
      t.integer  :loses
      t.integer  :ties
      t.integer  :home_wins
      t.integer  :home_losses
      t.integer  :road_wins
      t.integer  :road_losses
      t.integer  :div_wins
      t.integer  :div_losses
      t.integer  :conf_wins
      t.integer  :conf_losses
      t.integer  :points_for
      t.integer  :points_against
      
      t.timestamps
    end

    add_index :teams, :name, :unique => true
  end
end
