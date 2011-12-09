class AchievementsController < ApplicationController
    
  def index
    @achievements = Achievement.find(:all)   
  end

end
