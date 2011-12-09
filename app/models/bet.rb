class Bet < ActiveRecord::Base
  belongs_to :team
  belongs_to :team
  belongs_to :game
  
  validates_numericality_of :wager, :on => :create
end
