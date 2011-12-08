class BetsController < ApplicationController
  def index
  end

  def new
    @game = Game.find(177)
      
    render :layout => 'colorbox'
    
   
  
  end

  def show
    render :layout => 'colorbox'
  end

end
