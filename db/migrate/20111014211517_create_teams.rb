class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :conference
      t.integer :league_id
      t.string :stat_type
      t.integer :stat_id

      t.timestamps
    end

    add_index :teams, :name, :unique => true
  end
end
