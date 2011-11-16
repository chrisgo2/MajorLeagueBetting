# == Schema Information
#
# Table name: teams
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  conference :string(255)
#  league_id  :integer
#  stat_type  :string(255)
#  stat_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Team < ActiveRecord::Base

  belongs_to :league

  def self.update_from_web!
    #NFL Team Stats Finder
    #Sean C. Allen
    #CSU, Chico
    #CSCI 430
    
    require 'rubygems'
    require 'nokogiri'
    require 'open-uri'

    conf = String.new
    div = String.new
    name = String.new
    s_name = String.new
    temp = String.new

    home_record = String.new
    away_record = String.new
    conf_record = String.new
    div_record = String.new

    wins = Integer
    losses = Integer
    ties = Integer
    home_wins = Integer
    home_losses = Integer
    road_wins = Integer
    road_losses = Integer
    div_wins = Integer
    div_losses = Integer
    conf_wins = Integer
    conf_losses = Integer
    points_for = Integer
    points_against = Integer

    #Create a Nokogiri::HTML::Document for nfl.com/standings
    nfl = Nokogiri::HTML(open("http://www.nfl.com/standings"))

    #Print 
    nfl.xpath('//table/tbody/tr').each do |rowNode|
      if rowNode['class'] == "thd2"

        temp = rowNode.child.text.strip #Conference and Division
        conf, div = temp.split(" ") #Conference and Division Seperated
        #printf("\n%s %s",conf,div)

      else if rowNode['class'] == "tbdy1"

        name = rowNode.child.text.strip #Team Name

        temp = rowNode.child.next_sibling.next_sibling.text.strip #Wins
        wins = temp.to_i
        temp = rowNode.child.next.next.next.next.text.strip #Losses
        losses = temp.to_i
        temp = rowNode.child.next.next.next.next.next.next.text.strip #Ties
        ties = temp.to_i

        temp = rowNode.child.next.next.next.next.next.next.next.next.next.next.text.strip #Points For
        points_for = temp.to_i
        temp = rowNode.child.next.next.next.next.next.next.next.next.next.next.next.next.text.strip #Points against
        points_against = temp.to_i

        temp = rowNode.child.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.text.strip #Home Record
        home_record = temp
        home_wins = home_record.split("-").first.to_i #Home Wins
        home_losses = home_record.split("-").last.to_i #Home Losses

        temp = rowNode.child.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.text.strip #Away Record
        away_record = temp
        away_wins = away_record.split("-").first.to_i #Away Wins
        away_losses = away_record.split("-").last.to_i #Away Losses

        temp = rowNode.child.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.text.strip #Div Record
        div_record = temp
        div_wins = div_record.split("-").first.to_i #Division Wins
        div_losses = div_record.split("-").last.to_i #Division Losses

        temp = rowNode.child.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.next.text.strip #Conf Record
        conf_record = temp
        conf_wins = conf_record.split("-").first.to_i #Conference Wins
        conf_losses = conf_record.split("-").last.to_i #Conference Losses

        #printf("\n  %s: %d-%d-%d",name, wins, losses, ties)
        #printf("\n    PF/PA:       %d/%d",points_for,points_against)
        #printf("\n    Home Record: %d-%d",home_wins,home_losses)
        #printf("\n    Away Record: %d-%d",away_wins,away_losses)
        #printf("\n    Conf Record: %d-%d",conf_wins,conf_losses)
        #printf("\n    Div Record:  %d-%d",div_wins,div_losses)
        
        team = Team.find_by_name(name)
        team.wins = wins
        team.losses = losses
        team.ties = ties
        team.home_wins = home_wins
        team.home_losses = home_losses
        team.road_wins = away_wins
        team.road_losses = away_losses
        team.conf_wins = conf_wins
        team.conf_losses = conf_losses
        team.div_wins = div_wins
        team.div_losses = div_losses
        team.points_for = points_for
        team.points_against = points_against
        team.save!
        
      else
        #do nothing for now
      end
    end
    end
    
  end
end
