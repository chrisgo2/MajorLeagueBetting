#      t.integer :user_id
#      t.integer :game_id
#      t.integer :team_id
#      t.integer :wager
#      t.boolean :status
#      t.boolean :won_or_lost

class Head2headBet < ActiveRecord::Base
  belongs_to :game
  belongs_to :winner_selection,  :class_name => "Team"
   
    user_id = current_user.id
    game_id = Integer.new
    team_id = Integer.new
    wager = Integer.new
    status = Boolean.new
    won_or_lost = Boolean.new
    
    
end
