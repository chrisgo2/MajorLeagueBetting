# == Schema Information
#
# Table name: bet_links
#
#  id              :integer         not null, primary key
#  bet_type        :string(255)
#  bet_id          :integer
#  wager           :integer
#  is_win          :boolean
#  wager_selection :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'spec_helper'

describe BetLink do
  pending "add some examples to (or delete) #{__FILE__}"
end
