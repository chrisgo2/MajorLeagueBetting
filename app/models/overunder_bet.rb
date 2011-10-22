# == Schema Information
#
# Table name: overunder_bets
#
#  id         :integer         not null, primary key
#  type       :string(255)
#  game_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class OverunderBet < ActiveRecord::Base
end
