# == Schema Information
#
# Table name: bets
#
#  id         :integer         not null, primary key
#  bet_type   :string(255)
#  user_id    :integer
#  game_id    :integer
#  team_id    :integer
#  wager      :integer
#  stat_type  :integer
#  line       :float
#  is_over    :boolean
#  win_status :boolean
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Bet do
  pending "add some examples to (or delete) #{__FILE__}"
end
