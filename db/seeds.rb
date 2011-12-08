# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

League.create :name => "National Football League",
               :short_name => "NFL",
               :sport => "Football",
               :logo_path => "/assets/nfl-images/nfl.png"
               
League.create :name => "Major League Baseball",
              :short_name => "MLB",
              :sport => "Baseball"

#AFC EAST
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "East",
            :name => "New England Patriots",
            :short_name => "NE",
            :logo_path => "/assets/nfl-images/nfl-newenglandpatriots.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "East",
            :name => "New York Jets",
            :short_name => "NYJ",
            :logo_path => "/assets/nfl-images/nfl-nyjets.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "East",
            :name => "Buffalo Bills",
            :short_name => "BUF",
            :logo_path => "/assets/nfl-images/nfl-buffalobills.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "East",
            :name => "Miami Dolphins",
            :short_name => "MIA",
            :logo_path => "/assets/nfl-images/nfl-miamidolphins.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
#AFC NORTH
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "North",
            :name => "Pittsburgh Steelers",
            :short_name => "PIT",
            :logo_path => "/assets/nfl-images/nfl-pitstburghsteelers.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "North",
            :name => "Baltimore Ravens",
            :short_name => "BAL",
            :logo_path => "/assets/nfl-images/nfl-baltimoreravens.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "North",
            :name => "Cincinnati Bengals",
            :short_name => "CIN",
            :logo_path => "/assets/nfl-images/nfl-cincinnatibengals.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "North",
            :name => "Cleveland Browns",
            :short_name => "CLE",
            :logo_path => "/assets/nfl-images/nfl-clevelandbrowns.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
#AFC SOUTH
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "South",
            :name => "Houston Texans",
            :short_name => "HOU",
            :logo_path => "/assets/nfl-images/nfl-houstontexans.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "South",
            :name => "Tennessee Titans",
            :short_name => "TEN",
            :logo_path => "/assets/nfl-images/nfl-tennesseetitans.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "South",
            :name => "Jacksonville Jaguars",
            :short_name => "JAC",
            :logo_path => "/assets/nfl-images/nfl-jacksonvillejaguars.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "South",
            :name => "Indianapolis Colts",
            :short_name => "IND",
            :logo_path => "/assets/nfl-images/nfl-indianapoliscolts.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
#AFC WEST
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "West",
            :name => "Oakland Raiders",
            :short_name => "OAK",
            :logo_path => "/assets/nfl-images/nfl-oaklandraiders.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "West",
            :name => "San Diego Chargers",
            :short_name => "SD",
            :logo_path => "/assets/nfl-images/nfl-sandiegochargers.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "West",
            :name => "Denver Broncos",
            :short_name => "DEN",
            :logo_path => "/assets/nfl-images/nfl-denverbroncos.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "West",
            :name => "Kansas City Chiefs",
            :short_name => "KC",
            :logo_path => "/assets/nfl-images/nfl-kansascitychiefs.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
#NFC EAST
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "East",
            :name => "New York Giants",
            :short_name => "NYG",
            :logo_path => "/assets/nfl-images/nfl-nygiants.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "East",
            :name => "Dallas Cowboys",
            :short_name => "DAL",
            :logo_path => "/assets/nfl-images/nfl-dallascowboys.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "East",
            :name => "Philadelphia Eagles",
            :short_name => "PHI",
            :logo_path => "/assets/nfl-images/nfl-philadelphiaeagles.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "East",
            :name => "Washington Redskins",
            :short_name => "WAS",
            :logo_path => "/assets/nfl-images/nfl-washingtonredskins.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
#NFC NORTH
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "North",
            :name => "Green Bay Packers",
            :short_name => "GB",
            :logo_path => "/assets/nfl-images/nfl-greenbaypackers.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "North",
            :name => "Detroit Lions",
            :short_name => "DET",
            :logo_path => "/assets/nfl-images/nfl-detroitlions.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "North",
            :name => "Chicago Bears",
            :short_name => "CHI",
            :logo_path => "/assets/nfl-images/nfl-chicagobears.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "North",
            :name => "Minnesota Vikings",
            :short_name => "MIN",
            :logo_path => "/assets/nfl-images/nfl-minnesotavikings.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
#NFC SOUTH
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "South",
            :name => "New Orleans Saints",
            :short_name => "NO",
            :logo_path => "/assets/nfl-images/nfl-neworleanssaints.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "South",
            :name => "Atlanta Falcons",
            :short_name => "ATL",
            :logo_path => "/assets/nfl-images/nfl-atlantafalcons.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "South",
            :name => "Carolina Panthers",
            :short_name => "CAR",
            :logo_path => "/assets/nfl-images/nfl-carolinapanthers.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "South",
            :name => "Tampa Bay Buccaneers",
            :short_name => "TB",
            :logo_path => "/assets/nfl-images/nfl-tampabaybuccaneers.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
#NFC WEST
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "West",
            :name => "San Francisco 49ers",
            :short_name => "SF",
            :logo_path => "/assets/nfl-images/nfl-sanfrancisco49ers.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "West",
            :name => "Seattle Seahawks",
            :short_name => "SEA",
            :logo_path => "/assets/nfl-images/nfl-seattleseahawks.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "West",
            :name => "Arizona Cardinals",
            :short_name => "ARI",
            :logo_path => "/assets/nfl-images/nfl-arizonacardinals.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "West",
            :name => "St. Louis Rams",
            :short_name => "STL",
            :logo_path => "/assets/nfl-images/nfl-stlouisrams.png",
            :wins => 0,
            :losses => 0,
            :ties => 0,
            :home_wins => 0,
            :home_losses => 0,
            :road_wins => 0,
            :road_losses => 0,
            :conf_wins => 0,
            :conf_losses => 0,
            :div_wins => 0,
            :div_losses => 0,
            :points_for => 0,
            :points_against => 0

Team.update_from_web!
#Headline.update_from_web!
#Quarterback.update_from_web!
#Runningback.update_from_web!
            
            
            Achievement.create :title => "First Bet",
                               :description => "The user has made their 1st - bet",
                               :type => "Betting",
                               :logo_path => "/public/images/achievements/Bonus.png"
                               
            Achievement.create :title => "Fifth Bet",
                               :description => "The user has made their 5rd - bet",
                               :type => "Betting",
                               :logo_path => "/public/images/achievements/Bonus.png"
            
            Achievement.create :title => "Tenth Bet",
                               :description => "The user has made their 10th - bet",
                               :type => "Betting",
                               :logo_path => "/public/images/achievements/Bonus.png"
                               
            Achievement.create :title => "25th Bet",
                               :description => "The user has made their 25th - bet",
                               :type => "Betting",
                               :logo_path => "/public/images/achievements/Bonus.png"
                               
            Achievement.create :title => "50th Bet",
                               :description => "The user has made their 50th - bet",
                               :type => "Betting",
                               :logo_path => "/public/images/achievements/Bonus.png"
                               
            Achievement.create :title => "100th Bet",
                               :description => "The user has made their 100th - bet",
                               :type => "Betting",
                               :logo_path => "/public/images/achievements/Bonus.png"
           #U S E R     W I N S
           
           Achievement.create :title => "First Win",
                               :description => "The user has won their first bet",
                               :type => "Wins",
                               :logo_path => "/public/images/achievements/WinsA.png"
            
            Achievement.create :title => "Fifth Win",
                               :description => "The user has won their fifth bet ",
                               :type => "Wins",
                               :logo_path => "/public/images/achievements/WinsA.png"
            
            Achievement.create :title => "Tenth Win",
                               :description => "The user has won their tenth bet",
                               :type => "Wins",
                               :logo_path => "/public/images/achievements/WinsA.png"
            
            Achievement.create :title => "25th Win",
                               :description => "The user has won their 25th bet",
                               :type => "Wins",
                               :logo_path => "/public/images/achievements/WinsA.png"
            
            
            
            Achievement.update_from_web!
            
            
            
            
            
            
            
            
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

Game.update_spread!