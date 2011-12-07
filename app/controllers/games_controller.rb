class GamesController < ApplicationController
  
  def index
    @games = Game.find(:all, :conditions => {:week => 13})
  end
  
  def show
  end
end
