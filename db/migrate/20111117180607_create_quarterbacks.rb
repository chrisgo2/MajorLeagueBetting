class CreateQuarterbacks < ActiveRecord::Migration
  def change
    create_table :quarterbacks do |t|
      t.string :name
      t.string  :link
      t.integer :rank
      t.integer :league_id
      t.integer :team_id
      t.integer :td
      t.integer :int
      t.float :yds_per_g

      t.timestamps
    end
  end
end
