# == Schema Information
#
# Table name: head2head_bets
#
#  id         :integer         not null, primary key
#  type       :string(255)
#  game_id    :integer
#  is_spread  :boolean
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Head2headBet do
  pending "add some examples to (or delete) #{__FILE__}"
end
