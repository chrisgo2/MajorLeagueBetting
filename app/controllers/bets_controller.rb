class BetsController < ApplicationController
  def index
  end

  def new
    render :layout => 'colorbox'
    
    @game = Game.find(params[:game_id])
  
  end

  def show
    render :layout => 'colorbox'
  end

end
