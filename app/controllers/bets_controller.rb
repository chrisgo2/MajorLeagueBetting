class BetsController < ApplicationController
  def index
  end

  def new
    @game = Game.find(params[:game_id])
    @bet  = @game.bets.build
      
    render :layout => 'colorbox'
  end
  
  def create
    @game = Game.find(params[:game_id])
    @bet = @game.bets.build(params[:bet])
    @bet.user_id = current_user.id
    @bet.bet_type = "head2head"
    if @bet.save
      flash[:success] = "Placed Bet!"
      redirect_to games_path
    else
      render "new"
    end
  end

  def show
    render :layout => 'colorbox'
  end

end
