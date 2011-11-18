class CreateWidereceivers < ActiveRecord::Migration
  def change
    create_table :widereceivers do |t|
      t.string :name
      t.string :link
      t.integer :rank
      t.integer :league_id
      t.integer :team_id
      t.integer :rec
      t.integer :td
      t.float   :yds_per_g

      t.timestamps
    end
  end
end
