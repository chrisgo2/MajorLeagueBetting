# == Schema Information
#
# Table name: game_bets_h2hs
#
#  id          :integer         not null, primary key
#  user_id     :integer
#  game_id     :integer
#  team_id     :integer
#  wager       :integer
#  status      :boolean
#  won_or_lost :boolean
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe GameBetsH2h do
  pending "add some examples to (or delete) #{__FILE__}"
end
