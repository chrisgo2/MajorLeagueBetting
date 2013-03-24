class AchievementsController < ApplicationController
    
  def index
    @achievements = Achievement.find(params[:win_status])
    #@bets = Bet.find(:all)
    #@user_achievement = User_achievement.find(:all)
    
    end
  
  def create
      #if (( Bet.find(:all, :conditions => ["win_status=?", true])).count == 1 )
        @user_achievement = user_achievement.new(params[:user_id => current_user.id, :achievement_id => 1])
      #end
      
  end

end
