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
#  week         :integer
#  start_time   :datetime
#  created_at   :datetime
#  updated_at   :datetime
#

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
    home_wp = Float
    away_wp = Float
    home_hwp = Float
    away_awp = Float
    home_cwp = Float
    away_cwp = Float
    home_dwp = Float
    away_dwp = Float
    points = Integer
    spread = Float
    check = Float
    
    Game.find(:all).each do |g|
      home_team = Team.find(g.home_team_id)
      away_team = Team.find(g.away_team_id)
      
      home_wp = (home_team.wins.to_f/(home_team.wins + home_team.losses + home_team.ties).to_f)
      away_wp = (away_team.wins.to_f/(away_team.wins + away_team.losses + away_team.ties).to_f)
      home_hwp = (home_team.home_wins.to_f/(home_team.home_wins + home_team.home_losses).to_f)
      away_awp = (away_team.road_wins.to_f/(away_team.road_wins + away_team.road_losses).to_f)
      home_cwp = (home_team.conf_wins.to_f/(home_team.conf_wins + home_team.conf_losses).to_f)
      away_cwp = (away_team.conf_wins.to_f/(away_team.conf_wins + away_team.conf_losses).to_f)
      home_dwp = (home_team.div_wins.to_f/(home_team.div_wins + home_team.div_losses).to_f)
      away_dwp = (away_team.div_wins.to_f/(away_team.div_wins + away_team.div_losses).to_f)
      points = (home_team.points_for - away_team.points_for + away_team.points_against - home_team.points_against)
      
      spread = (1 + (home_wp - away_wp) + (home_hwp - away_awp) + (points.to_f/10)) * -1
      if (spread > 0)
        spread = spread.floor + 0.5
      else
        spread = spread.ceil + 0.5
      end
      
      check = ((g.away_score - g.home_score).to_f - spread).abs
      
      printf("\n%s @\n%s %f\n",Team.find(g.away_team_id).name, Team.find(g.home_team_id).name, spread)
      g.spread = spread
      g.spread_check = check
      g.save!
      
    end
  end
  
  
end
