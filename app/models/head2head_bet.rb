class Head2headBet < ActiveRecord::Base
  belongs_to :game
  belongs_to :winner_selection,  :class_name => "Team"
end
