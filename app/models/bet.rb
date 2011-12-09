# == Schema Information
#
# Table name: bets
#
#  id         :integer         not null, primary key
#  bet_type   :string(255)
#  user_id    :integer
#  game_id    :integer
#  team_id    :integer
#  wager      :integer
#  stat_type  :integer
#  line       :float
#  is_over    :boolean
#  win_status :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Bet < ActiveRecord::Base
  belongs_to :team
  belongs_to :team
  belongs_to :game
  
  validates :bet_type, :presence => true
  validates :user_id,  :presence => true
  validates :game_id,  :presence => true
  validates :team_id,  :presence => true, :if => :is_head2head?
  validates :wager,  :presence => true, :numericality => { :greater_than => 0 }
  
  def is_head2head?
    bet_type == "head2head"
  end
end
