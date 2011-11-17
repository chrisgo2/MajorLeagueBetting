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
               :logo_path => "app/assets/images/nfl.png"
               
League.create :name => "Major League Baseball",
              :short_name => "MLB",
              :sport => "Baseball"

#AFC EAST
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "East",
            :name => "New England Patriots",
            :short_name => "NE",
            :logo_path => "app/assests/images/nfl-images/nfl-newenglandpatriots.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "East",
            :name => "New York Jets",
            :short_name => "NYJ",
            :logo_path => "app/assests/images/nfl-images/nfl-nyjets.png"
            
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "East",
            :name => "Buffalo Bills",
            :short_name => "BUF",
            :logo_path => "app/assests/images/nfl-images/nfl-buffalobills.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "East",
            :name => "Miami Dolphins",
            :short_name => "MIA",
            :logo_path => "app/assests/images/nfl-images/nfl-miamidolphins.png"

#AFC NORTH
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "North",
            :name => "Pittsburgh Steelers",
            :short_name => "PIT",
            :logo_path => "app/assests/images/nfl-images/nfl-pitstburghsteelers.png"
  
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "North",
            :name => "Baltimore Ravens",
            :short_name => "BAL",
            :logo_path => "app/assests/images/nfl-images/nfl-baltimoreravens.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "North",
            :name => "Cincinnati Bengals",
            :short_name => "CIN",
            :logo_path => "app/assests/images/nfl-images/nfl-cincinnatibengals.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "North",
            :name => "Cleveland Browns",
            :short_name => "CLE",
            :logo_path => "app/assests/images/nfl-images/nfl-clevelandbrowns.png"

#AFC SOUTH
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "South",
            :name => "Houston Texans",
            :short_name => "HOU",
            :logo_path => "app/assests/images/nfl-images/nfl-houstontexans.png"
         
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "South",
            :name => "Tennessee Titans",
            :short_name => "TEN",
            :logo_path => "app/assests/images/nfl-images/nfl-tennesseetitans.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "South",
            :name => "Jacksonville Jaguars",
            :short_name => "JAC",
            :logo_path => "app/assests/images/nfl-images/nfl-jacksonvillejaguars.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "South",
            :name => "Indianapolis Colts",
            :short_name => "IND",
            :logo_path => "app/assests/images/nfl-images/nfl-indianapoliscolts.png"
#AFC WEST
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "West",
            :name => "Oakland Raiders",
            :short_name => "OAK",
            :logo_path => "app/assests/images/nfl-images/nfl-oaklandraiders.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "West",
            :name => "San Diego Chargers",
            :short_name => "SD",
            :logo_path => "app/assests/images/nfl-images/nfl-sandiegochargers.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "West",
            :name => "Denver Broncos",
            :short_name => "DEN",
            :logo_path => "app/assests/images/nfl-images/nfl-denverbroncos.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "AFC",
            :division => "West",
            :name => "Kansas City Chiefs",
            :short_name => "KC",
            :logo_path => "app/assests/images/nfl-images/nfl-.png"
#NFC EAST
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "East",
            :name => "New York Giants",
            :short_name => "NYG",
            :logo_path => "app/assests/images/nfl-images/nfl-nygiants.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "East",
            :name => "Dallas Cowboys",
            :short_name => "DAL",
            :logo_path => "app/assests/images/nfl-images/nfl-dallascowboys.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "East",
            :name => "Philadelphia Eagles",
            :short_name => "PHI",
            :logo_path => "app/assests/images/nfl-images/nfl-philadelphiaeagles.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "East",
            :name => "Washington Redskins",
            :short_name => "WAS",
            :logo_path => "app/assests/images/nfl-images/nfl-.png"
#NFC NORTH
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "North",
            :name => "Green Bay Packers",
            :short_name => "GB",
            :logo_path => "app/assests/images/nfl-images/nfl-greenbaypackers.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "North",
            :name => "Detroit Lions",
            :short_name => "DET",
            :logo_path => "app/assests/images/nfl-images/nfl-detroitlions.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "North",
            :name => "Chicago Bears",
            :short_name => "CHI",
            :logo_path => "app/assests/images/nfl-images/nfl-chicagobears.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "North",
            :name => "Minnesota Vikings",
            :short_name => "MIN",
            :logo_path => "app/assests/images/nfl-images/nfl-minnesotavikings.png"

#NFC SOUTH
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "South",
            :name => "New Orleans Saints",
            :short_name => "NO",
            :logo_path => "app/assests/images/nfl-images/nfl-neworleanssaints.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "South",
            :name => "Atlanta Falcons",
            :short_name => "ATL",
            :logo_path => "app/assests/images/nfl-images/nfl-atlantafalcons.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "South",
            :name => "Carolina Panthers",
            :short_name => "CAR",
            :logo_path => "app/assests/images/nfl-images/nfl-carolinapanthers.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "South",
            :name => "Tampa Bay Buccaneers",
            :short_name => "TB",
            :logo_path => "app/assests/images/nfl-images/nfl-tampabaybuccaneers.png"
            
#NFC WEST
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "West",
            :name => "San Francisco 49ers",
            :short_name => "SF",
            :logo_path => "app/assests/images/nfl-images/nfl-sanfrancisco49ers.png"
            
Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "West",
            :name => "Seattle Seahawks",
            :short_name => "SEA",
            :logo_path => "app/assests/images/nfl-images/nfl-seattleseahawks.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "West",
            :name => "Arizona Cardinals",
            :short_name => "ARI",
            :logo_path => "app/assests/images/nfl-images/nfl-arizonacaridnals.png"

Team.create :league_id => League.find_by_short_name("NFL").id,
            :conference => "NFC",
            :division => "West",
            :name => "St. Louis Rams",
            :short_name => "STL",
            :logo_path => "app/assests/images/nfl-images/nfl-stlouisrams.png"
            
            
            #NFL Schedule Finder
            #Sean C. Allen
            #CSU, Chico
            #CSCI 430

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
