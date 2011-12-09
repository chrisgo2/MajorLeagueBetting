class BetsController < ApplicationController
  def index
  end

  def new
    @game = Game.find(params[:game_id])
    @head2head = Game_bets_h2h
      
    render :layout => 'colorbox'
  end
  
  def create
    flash[:success] = "Made Bet!"
  end

  def show
    render :layout => 'colorbox'
  end

end
