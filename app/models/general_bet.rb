# == Schema Information
#
# Table name: general_bets
#
#  id         :integer         not null, primary key
#  type       :string(255)
#  item_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class GeneralBet < ActiveRecord::Base
end
