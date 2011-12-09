class ModifyBets < ActiveRecord::Migration
   def change
    create_table :head2head_bets do |t|
      t.integer  :user_id
      t.integer  :game_id
      t.integer  :winner_selection_id
      t.integer  :wager
      t.boolean :is_over
      t.boolean :win_status

      t.timestamps
    end
    
    create_table :overunder_bets do |t|
      t.integer  :user_id
      t.integer  :game_id
      t.float       :line
      t.integer  :type
      t.integer  :team_id
      t.integer  :wager
      t.boolean :is_over
      t.boolean :win_status

      t.timestamps
    end
    
    drop_table :game_bets_h2hs
    drop_table :over_under_bets
  end
end
