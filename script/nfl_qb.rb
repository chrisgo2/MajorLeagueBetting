#NFL Top 10 Quarterbacks Finder
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
int  = String.new
yds_per_g  = String.new

temp = String.new

#Create a Nokogiri::HTML::Document for www.nfl.com/schedules
nfl = Nokogiri::HTML(open("http://espn.go.com/nfl/statistics/player/_/stat/passing/sort/quarterbackRating/year/2011/seasontype/2"))

nfl.xpath('//table/tr').each do |rowNode|
       rank = rowNode.child.text.strip #Rank
       name = rowNode.child.next.child.text #QB Name
       temp = rowNode.child.next.child.to_s #Link
       link = temp.split("\"")[1]
       team = rowNode.child.next.next.text.strip #Team
       #puts rowNode.child.next.next.next.next.text.strip #Attempts
       #puts rowNode.child.next.next.next.next.next.text.strip #PCT
       #puts rowNode.child.next.next.next.next.next.next.text.strip #YDS
       #puts rowNode.child.next.next.next.next.next.next.next.text.strip #YDS/A
       #puts rowNode.child.next.next.next.next.next.next.next.next.text.strip #Long
       td = rowNode.child.next.next.next.next.next.next.next.next.next.text.strip #TD
       int = rowNode.child.next.next.next.next.next.next.next.next.next.next.text.strip #INT
       yds_per_g = rowNode.child.next.next.next.next.next.next.next.next.next.next.next.next.next.text.strip #YDS/G
       
       if (rank != "RK")
         printf("\n%s",rank)
       end
end


