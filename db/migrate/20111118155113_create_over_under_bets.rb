class CreateOverUnderBets < ActiveRecord::Migration
  def change
    create_table :over_under_bets do |t|
      t.string :position
      t.integer :user_id
      t.integer :game_id
      t.integer :position_id
      t.integer :wager
      t.float   :line
      t.boolean :status
      t.boolean :won_or_lost

      t.timestamps
    end
  end
end
