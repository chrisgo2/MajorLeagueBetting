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
class Game < ActiveRecord::Base
  
  def self.update_from_web!
    printf("\nShould Update Game Results from the Web")
  end
  
  def self.update_spread!
    
  end
  
  
end
