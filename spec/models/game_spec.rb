# == Schema Information
#
# Table name: games
#
#  id           :integer         not null, primary key
#  league_id    :integer
#  home_team_id :integer
#  away_team_id :integer
#  home_score   :integer
#  away_score   :integer
#  spread       :float
#  spread_check :float
#  completed    :boolean
#  week         :integer
#  start_time   :datetime
#  created_at   :datetime
#  updated_at   :datetime
#

require 'spec_helper'

describe Game do
  pending "add some examples to (or delete) #{__FILE__}"
end
