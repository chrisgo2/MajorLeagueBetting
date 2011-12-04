class GamesController < ApplicationController
  def index
    
    @games = Games.find(:all)
    
  end
  
  def show
    
  end

end
