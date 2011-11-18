# == Schema Information
#
# Table name: over_under_bets
#
#  id          :integer         not null, primary key
#  position    :string(255)
#  user_id     :integer
#  game_id     :integer
#  position_id :integer
#  wager       :integer
#  line        :float
#  status      :boolean
#  won_or_lost :boolean
#  created_at  :datetime
#  updated_at  :datetime
#

class OverUnderBet < ActiveRecord::Base
end
