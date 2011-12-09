class GamesController < ApplicationController
  before_filter :authenticate
  
  def index
    @week = 13
    @games = Game.find(:all, :conditions => {:week => @week})
  end
  
  def show
  end
end
