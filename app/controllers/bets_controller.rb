class BetsController < ApplicationController
  def index
  end

  def new
    @game = Game.find(params[:game_id])
    @bet  = Bet.new
      
    render :layout => 'colorbox'
  end
  
  def create
    flash[:success] = "Made Bet!"
    
    render :layout => 'colorbox'
  end

  def show
    render :layout => 'colorbox'
  end

end
