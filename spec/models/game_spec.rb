# == Schema Information
#
# Table name: games
#
#  id            :integer         not null, primary key
#  home_team_id  :integer
#  away_team_id  :integer
#  game_type     :string(255)
#  league_id     :integer
#  game_stat_id  :integer
#  start_time    :datetime
#  end_time      :datetime
#  location      :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  winner_id     :integer
#  loser_id      :integer
#  winner_points :integer
#  loser_points  :integer
#

require 'spec_helper'

describe Game do
  pending "add some examples to (or delete) #{__FILE__}"
end
