class Runningback < ActiveRecord::Base
  
  def self.update_from_web!
    Runningback.delete_all #Clear Runningback Table
    
    #NFL Top Runningbacks Finder
    #Sean C. Allen
    #CSU, Chico
    #CSCI 430

    require 'rubygems'
    require 'nokogiri'
    require 'open-uri'

    rank = String.new
    name = String.new
    link = String.new
    team = String.new
    td   = String.new
    yds_per_g  = String.new

    temp = String.new

    #Create a Nokogiri::HTML::Document for www.nfl.com/schedules
    nfl = Nokogiri::HTML(open("http://espn.go.com/nfl/statistics/player/_/stat/rushing/sort/rushingYards/year/2011/seasontype/2"))
    nfl.xpath('//table/tr').each do |rowNode|
           rank = rowNode.child.text.strip #Rank
           name = rowNode.child.next.child.text #QB Name
           temp = rowNode.child.next.child.to_s #Link
           link = temp.split("\"")[1]
           team = rowNode.child.next.next.text.strip #Team
           td = rowNode.child.next.next.next.next.next.next.next.next.text.strip #TD
           yds_per_g = rowNode.child.next.next.next.next.next.next.next.next.next.text.strip #YDS/G

           if (team == "WSH") #ESPN uses WSH and NFL uses WAS
              team = "WAS"    # We will also use WAS
            end

            if (rank != "RK")
              Runningback.create :rank => rank.to_i,
                                 :name => name,
                                 :link => link,
                                 :league_id => League.find_by_short_name("NFL").id,
                                 :team_id => Team.find_by_short_name(team).id,
                                 :td => td.to_i,
                                 :yds_per_g => yds_per_g.to_f
            end
    end


    
  end
end
