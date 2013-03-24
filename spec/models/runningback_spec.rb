# == Schema Information
#
# Table name: runningbacks
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  link       :string(255)
#  rank       :integer
#  league_id  :integer
#  team_id    :integer
#  td         :integer
#  yds_per_g  :float
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Runningback do
  pending "add some examples to (or delete) #{__FILE__}"
end
