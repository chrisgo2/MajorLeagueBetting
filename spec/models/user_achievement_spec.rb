# == Schema Information
#
# Table name: user_achievements
#
#  id             :integer         not null, primary key
#  user_id        :integer
#  achievement_id :integer
#  name           :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

require 'spec_helper'

describe UserAchievement do
  pending "add some examples to (or delete) #{__FILE__}"
end
