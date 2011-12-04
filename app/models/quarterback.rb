# == Schema Information
#
# Table name: quarterbacks
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  link       :string(255)
#  rank       :integer
#  league_id  :integer
#  team_id    :integer
#  td         :integer
#  int        :integer
#  yds_per_g  :float
#  created_at :datetime
#  updated_at :datetime
#

class Quarterback < ActiveRecord::Base
  
  def self.update_from_web!
    Quarterback.delete_all #Clear the Quarterback Table
    
    #NFL Top 10 Quarterbacks Finder
    #Sean C. Allen
    #CSU, Chico
    #CSCI 430
    
    belongs_to :team

    require 'rubygems'
    require 'nokogiri'
    require 'open-uri'

    rank = String.new
    name = String.new
    link = String.new
    team = String.new
    td   = String.new
    int  = String.new
    yds_per_g  = String.new

    temp = String.new

    #Create a Nokogiri::HTML::Document for www.nfl.com/schedules
    nfl = Nokogiri::HTML(open("http://espn.go.com/nfl/statistics/player/_/stat/passing/sort/quarterbackRating/year/2011/seasontype/2"))

    nfl.xpath('//table/tr').each do |rowNode|
           rank = rowNode.child.text.strip #Rank
           name = rowNode.child.next.child.text #QB Name
           temp = rowNode.child.next.child.to_s #Link
           link = temp.split("\"")[1] # Link that is Usable
           team = rowNode.child.next.next.text.strip #Team
           td = rowNode.child.next.next.next.next.next.next.next.next.next.text.strip #TD
           int = rowNode.child.next.next.next.next.next.next.next.next.next.next.text.strip #INT
           yds_per_g = rowNode.child.next.next.next.next.next.next.next.next.next.next.next.next.next.text.strip #YDS/G
           
           if (team == "WSH") #ESPN uses WSH and NFL uses WAS
             team = "WAS"    # We will also use WAS
           end
           
           if (rank != "RK")
             Quarterback.create :rank => rank.to_i,
                                :name => name,
                                :link => link,
                                :league_id => League.find_by_short_name("NFL").id,
                                :team_id => Team.find_by_short_name(team).id,
                                :td => td.to_i,
                                :int => int.to_i,
                                :yds_per_g => yds_per_g.to_f
           end
    end
  end
end
