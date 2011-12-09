# == Schema Information
#
# Table name: head2head_bets
#
#  id                  :integer         not null, primary key
#  user_id             :integer
#  game_id             :integer
#  winner_selection_id :integer
#  wager               :integer
#  is_over             :boolean
#  win_status          :boolean
#  created_at          :datetime
#  updated_at          :datetime
#

class Head2headBet < ActiveRecord::Base
  belongs_to :game
  belongs_to :winner_selection,  :class_name => "Team"
end
