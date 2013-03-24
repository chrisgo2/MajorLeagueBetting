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


class Game < ActiveRecord::Base
  
  belongs_to :away_team, :class_name => "Team"
  belongs_to :home_team, :class_name => "Team"
  has_many   :bets


  
  def self.update_from_web!
    #NFL Schedule Finder
    #Sean C. Allen
    #CSU, Chico
    #CSCI 430

    require 'rubygems'
    require 'nokogiri'
    require 'open-uri'
    require 'date'

    week       = String.new
    date       = String.new
    time       = String.new
    combine_date = String.new
    home_team  = String.new
    away_team  = String.new
    home_score = String.new
    away_score = String.new
    over = false

    date_test = DateTime.now

    hs = Integer
    as = Integer
    week_num = Integer

    #Create a Nokogiri::HTML::Document for www.nfl.com/schedules
    nfl = Nokogiri::HTML(open("http://www.nfl.com/schedules"))

    #Print all h3 text
    nfl.xpath('//table/tbody/tr').each do |rowNode|
        if rowNode['class'] == "thd1"
            week = rowNode.child.text.strip # Week
            week_num = week.split(" ").last.to_i
            #printf("\n\n%s",week)

        else if rowNode['class'] == "thd2" 
            date = rowNode.child.text.strip # Date
            #printf("\n  %s",date)

        else rowNode['class'] == "tbdy1 "
            time = rowNode.child.next_sibling.next_sibling.text.strip # Time
            #printf("\n  %s",time)

            away_team = rowNode.child.child.next_sibling.text.strip # Away Team
            away_score = rowNode.child.child.next_sibling.next_sibling.text.strip # Away Score
            home_team = rowNode.child.child.next_sibling.next_sibling.next_sibling.text.strip # Home Team
            home_score = rowNode.child.child.next_sibling.next_sibling.next_sibling.next_sibling.text.strip # Home Score
            away_score = away_score.delete("^0-9")
            hs = home_score.to_i
            as = away_score.to_i

            combine_date = [date, time].join(" ")
            #printf("\nCombine Date: %s\n", combine_date)

            my_date = DateTime._strptime(combine_date, '%a, %b %d %I:%M %p')

            #puts date_test.strftime("%a, %b %d") 
            if my_date == nil
              #printf("\This Game Is Over!")
              over = true
            else
              #printf("\nThis Game Has Not Played")
              over = false
            end

            #printf("\n    %s %d at %s %d", away_team, as, home_team, hs) 
            Game.create :league_id => League.find_by_short_name("NFL").id,
                        :home_team_id => Team.find_by_short_name(home_team).id,
                        :away_team_id => Team.find_by_short_name(away_team).id,
                        :home_score => hs,
                        :away_score => as,
                        :week => week_num,
                        :completed => over,
                        :start_time => my_date
            end
          end
        end
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
      home_team = g.home_team #Team.find(g.home_team_id)
      away_team = g.away_team #Team.find(g.away_team_id)
      
      #printf("\n Home Team Name: %s Home Team ID: %s\n", home_team.name, home_team.id)
      
      home_wp = (home_team.wins != 0 && home_team.losses != 0 && home_team.ties) ? (home_team.wins.to_f/(home_team.wins + home_team.losses + home_team.ties).to_f) : 0
      # if home_team.wins != 0 && home_team.losses != 0 && home_team.ties
      #         home_wp = (home_team.wins.to_f/(home_team.wins + home_team.losses + home_team.ties).to_f)
      #       else
      #         home_wp = 0
      #       end
      away_wp = (away_team.wins != 0 && away_team.losses != 0 && away_team.ties) ? (away_team.wins.to_f/(away_team.wins + away_team.losses + away_team.ties).to_f) : 0
      # if away_team.wins != 0 && away_team.losses != 0 && away_team.ties
      #         away_wp = (away_team.wins.to_f/(away_team.wins + away_team.losses + away_team.ties).to_f)
      #       else
      #         away_wp = 0
      #       end
      home_hwp = (home_team.home_wins != 0 && home_team.home_losses != 0) ? (home_team.home_wins.to_f/(home_team.home_wins + home_team.home_losses).to_f) : 0
      # if home_team.home_wins != 0 && home_team.home_losses != 0
      #         home_hwp = (home_team.home_wins.to_f/(home_team.home_wins + home_team.home_losses).to_f)
      #       else
      #         home_hwp = 0
      #       end
      away_awp = (away_team.road_wins != 0 && away_team.road_losses != 0) ? (away_team.road_wins.to_f/(away_team.road_wins + away_team.road_losses).to_f) : 0
      # if away_team.road_wins != 0 && away_team.road_losses != 0
      #         away_awp = (away_team.road_wins.to_f/(away_team.road_wins + away_team.road_losses).to_f)
      #       else
      #         away_awp = 0
      #       end 
      home_cwp = (home_team.conf_wins != 0 && home_team.conf_losses != 0) ? (home_team.conf_wins.to_f/(home_team.conf_wins + home_team.conf_losses).to_f) : 0
      # if home_team.conf_wins != 0 && home_team.conf_losses != 0
      #        home_cwp = (home_team.conf_wins.to_f/(home_team.conf_wins + home_team.conf_losses).to_f)
      #      else
      #        home_cwp = 0
      #      end
      away_cwp = (away_team.conf_wins != 0 && away_team.conf_losses != 0) ? (away_team.conf_wins.to_f/(away_team.conf_wins + away_team.conf_losses).to_f) : 0
      # if away_team.conf_wins != 0 && away_team.conf_losses != 0
      #         away_cwp = (away_team.conf_wins.to_f/(away_team.conf_wins + away_team.conf_losses).to_f)
      #       else
      #         away_cwp = 0
      #       end
      home_dwp = (home_team.div_wins != 0 && home_team.div_losses != 0) ? (home_team.div_wins.to_f/(home_team.div_wins + home_team.div_losses).to_f) : 0
      # if home_team.div_wins != 0 && home_team.div_losses != 0
      #         home_dwp = (home_team.div_wins.to_f/(home_team.div_wins + home_team.div_losses).to_f)
      #       else
      #         home_dwp = 0
      #       end
      away_dwp = (away_team.div_wins != 0 && away_team.div_losses != 0) ? (away_team.div_wins.to_f/(away_team.div_wins + away_team.div_losses).to_f) : 0
      # if away_team.div_wins != 0 && away_team.div_losses != 0
      #         away_dwp = (away_team.div_wins.to_f/(away_team.div_wins + away_team.div_losses).to_f)
      #       else 
      #         away_dwp = 0
      #       end
      points = (home_team.points_for - away_team.points_for + away_team.points_against - home_team.points_against)
      
      #printf("\n%f @\n%f %f\n",Team.find(g.away_team_id).name, Team.find(g.home_team_id).name, spread)
      spread = (1 + (home_wp - away_wp) + (home_hwp - away_awp) + (points.to_f/10)) * -1
      #printf("\n Game Spread: %f\n", spread)
      if (spread > 0)
        spread = spread.floor + 0.5
      else
        spread = spread.ceil + 0.5
      end
      
      check = ((g.away_score - g.home_score).to_f - spread).abs
      
      #printf("\n%s @\n%s %f\n",Team.find(g.away_team_id).name, Team.find(g.home_team_id).name, spread)
      g.spread = spread
      g.spread_check = check
      g.save!
      
    end
  end
  
  
end
