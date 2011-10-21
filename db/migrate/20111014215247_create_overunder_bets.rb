class CreateOverunderBets < ActiveRecord::Migration
  def change
    create_table :overunder_bets do |t|
      t.string :type
      t.integer :game_id

      t.timestamps
    end
  end
end
