class AchievementsController < ApplicationController
    
  def index
    #@achievements = Achievement.find(:all)
    #@betCollection = BetCollection.find(:all)
    #@user_achievement = User_achievement.find(:all)
    

  end
      
    def create
      @user_achievement = User_achievement.create(params[:user_id, achievement_id])
    end

end
