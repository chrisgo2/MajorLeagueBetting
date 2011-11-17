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
  
  def self.create_from_web!
    #NFL Schedule Finder

    #Sean C. Allen
    #CSU, Chico
    #CSCI 430

    # Include nokogiri for HTML parsing

    require 'rubygems'
    require 'nokogiri'
    require 'open-uri'


    week       = String.new
    date       = String.new
    time       = String.new
    home_team  = String.new
    away_team  = String.new
    home_score = String.new
    away_score = String.new

    hs = Integer
    as = Integer

    #Create a Nokogiri::HTML::Document for www.nfl.com/schedules
    nfl = Nokogiri::HTML(open("http://www.nfl.com/schedules"))

    #Print all h3 text
    nfl.xpath('//table/tbody/tr').each do |rowNode|
        if rowNode['class'] == "thd1"
            week = rowNode.child.text.strip # Week
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
            printf("\n    %s %d at %s %d", away_team, as, home_team, hs) 
            Game.create :league_id => League.find_by_short_name("NFL").id,
                        :home_team_id => Team.find_by_short_name(home_team).id,
                        :away_team_id => Team.find_by_short_name(away_team).id,
                        :home_score => hs,
                        :away_score => as
        end
       
        

    end
    end
    
    
  end
  
  
end
