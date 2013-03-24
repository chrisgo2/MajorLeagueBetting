class BetsController < ApplicationController
  before_filter :authenticate
  
  def index
    @game = Game.find(params[:game_id])
    @bets = @game.bets.where("user_id = ?", current_user.id)
  end

  def new
    @game = Game.find(params[:game_id])
    @bet  = @game.bets.build
      
    render :layout => 'colorbox'
  end
  
  def create
    @game = Game.find(params[:game_id])
    @bet = @game.bets.build(params[:bet])
    @current_user = User.find(current_user.id)
    @bet.user_id  = current_user.id
    @bet.bet_type = "head2head"
    @bet.is_over  = false;
    @current_user.money  -= @bet.wager
    if @bet.save && @current_user.save
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
