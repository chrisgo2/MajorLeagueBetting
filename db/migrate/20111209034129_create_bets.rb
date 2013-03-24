class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.string   :bet_type
      t.integer  :user_id
      t.integer  :game_id
      t.integer  :team_id
      t.integer  :wager
      t.integer  :stat_type
      t.float    :line
      t.boolean  :is_over
      t.boolean  :win_status
      
      t.timestamps
    end
    
    drop_table :head2head_bets
  end
end
