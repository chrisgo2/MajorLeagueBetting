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

require 'spec_helper'

describe OverUnderBet do
  pending "add some examples to (or delete) #{__FILE__}"
end
