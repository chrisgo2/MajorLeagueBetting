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
              
Team.create :conference => "NFC",
            :division => "South",
            :name => "Tampa Bay Buccaneers",
            :short_name => "TB"