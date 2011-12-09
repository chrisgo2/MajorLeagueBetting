class AchievementsController < ApplicationController
    
  def index
    @achievements = Achievement.find(:all)
    #@bets = Bet.find(:all)
    #@user_achievement = User_achievement.find(:all)
    
    end
  
  def create
      if (( Bet.find(:all, :conditions => ["win_status=?", true])).count == 0 )
        flash[:notice] = 'The win status was found'
      end
      
  end

end
