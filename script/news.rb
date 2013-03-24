#rss news feeds

#Sean C. Allen
#CSU, Chico
#CSCI 430

require 'rss/1.0'
require 'rss/2.0'
require 'open-uri'
#require 'tk'



#ESPN Top Headlines
source = "http://sports.espn.go.com/espn/rss/news"
content= ""
open(source) do |s| content = s.read end
topNews = RSS::Parser.parse(content, false)

source = "http://sports.espn.go.com/espn/rss/nfl/news"
content = ""
open(source) do |s| content = s.read end
nflNews = RSS::Parser.parse(content, false)


print "\n\n\n", topNews.channel.description, "\n"
for i in 0...topNews.items.length
    print topNews.items[i].title, "\n"
    print topNews.items[i].link,"\n"
end
print "\n\n\n", nflNews.channel.description, "\n"
for i in 0...nflNews.items.length
    print nflNews.items[i].title, "\n"
end
    


#root = TkRoot.new { title "Ex1" }
#TkLabel.new(root) {
#    text  'Hello, World!'
#    pack  { padx 15 ; pady 15; side 'left' }
#}
#Tk.mainloop