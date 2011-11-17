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
       name = rowNode.child.next.child.text #RB Name
       temp = rowNode.child.next.child.to_s #Link
       link = temp.split("\"")[1]
       team = rowNode.child.next.next.text.strip #Team
       td = rowNode.child.next.next.next.next.next.next.next.next.text.strip #TD
       yds_per_game = rowNode.child.next.next.next.next.next.next.next.next.next.text.strip #YDS/G
       
       if (rank != "RK")
         printf("\n%s",name)
       end
end


