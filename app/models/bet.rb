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
  
  validates :bet_type,  :presence => true
  validates :user_id,   :presence => true
  validates :game_id,   :presence => true
  validates :team_id,   :presence => true, :if => :is_head2head?
  validates :stat_type, :presence => true, :if => :is_overunder?
  validates :line,      :presence => true, :if => :is_overunder?
  validates :team_id,   :presence => true, :if => :is_overunder_and_teamscore?
  validates :wager,     :presence => true, :numericality => { :greater_than => 0 }
  validates :user_id,   :uniqueness => { :scope => [:game_id], :message => "user has already placed this bet" }, :if => :is_head2head?
  validates :user_id,   :uniqueness => { :scope => [:game_id, :stat_type], :message => "user has already placed this bet" }, :if => :is_overunder?
  
  def is_head2head?
    bet_type == "head2head"
  end
  
  def is_overunder?
    bet_type == "overunder"
  end
  
  def is_overunder?
    bet_type == "overunder" && stat_type == "teamscore"
  end
end
