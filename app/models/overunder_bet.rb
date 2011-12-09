# == Schema Information
#
# Table name: overunder_bets
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  game_id    :integer
#  line       :float
#  type       :integer
#  team_id    :integer
#  wager      :integer
#  is_over    :boolean
#  win_status :boolean
#  created_at :datetime
#  updated_at :datetime
#

class OverunderBet < ActiveRecord::Base
   belongs_to :team
   belongs_to :game
  
end
