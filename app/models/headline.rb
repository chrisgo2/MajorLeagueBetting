class Headline < ActiveRecord::Base
  
  def self.update_from_web!
    Headline.delete_all #Clear the Headline Table

    #rss news feeds
    #Sean C. Allen
    #CSU, Chico
    #CSCI 430

    require 'rss/1.0'
    require 'rss/2.0'
    require 'open-uri'

    #ESPN Top Headlines
    source = "http://sports.espn.go.com/espn/rss/news"
    content= ""
    open(source) do |s| content = s.read end
    topNews = RSS::Parser.parse(content, false)

    source = "http://sports.espn.go.com/espn/rss/nfl/news"
    content = ""
    open(source) do |s| content = s.read end
    nflNews = RSS::Parser.parse(content, false)

    #print "\n\n\n", topNews.channel.description, "\n"
    for i in 0...topNews.items.length
        #print topNews.items[i].title, "\n"
        #print topNews.items[i].link,"\n"
        Headline.create :title => topNews.items[i].title,
                        :link => topNews.items[i].link
                        
    end
    #print "\n\n\n", nflNews.channel.description, "\n"
    for i in 0...nflNews.items.length
        #print nflNews.items[i].title, "\n"
        Headline.create :title => nflNews.items[i].title,
                        :link => nflNews.items[i].link
                        
    end

  end
end
