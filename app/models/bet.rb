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
  validates :user_id,    :presence => true
  validates :game_id,   :presence => true
  validates :team_id,   :presence => true, 
                        :if => :is_head2head?
  validates :stat_type, :presence => true, 
                        :if => :is_overunder?
  validates :line,      :presence => true,
                        :if => :is_overunder?
  validates :team_id,   :presence => true, 
                        :if => :is_overunder_and_teamscore?
  validates :wager,     :presence => true, 
                        :numericality => { :greater_than => 0 }
  validates :user_id,   :uniqueness => { :scope => [:game_id], :message => "user has already placed this bet" },
                        :if => :is_head2head?
  validates :user_id,   :uniqueness => { :scope => [:game_id, :stat_type], :message => "user has already placed this bet" },
                        :if => :is_overunder?
  
  def is_head2head?
    bet_type == "head2head"
  end
  
   def is_overunder?
    bet_type == "overunder"
  end
  
  def is_overunder_and_teamscore?
    bet_type == "overunder" && stat_type == "teamscore"
  end 
    
  def self.update_bet!
    #NFL Bet Checker
    #Sean C. Allen
    #CSU, Chico
    #CSCI 430
    
    h_score = Integer
    a_score = Integer
    spread = Float
    
    Bet.find(:all, :conditions => {:is_over => false}).each do |bet|
      h_score = Game.find(bet.game_id).home_score
      a_score = Game.find(bet.game_id).away_score
      spread = Game.find(bet.game_id).spread
      if Game.find(bet.game_id).home_team_id == bet.team_id
        if h_score.to_f + spread > a_score
          User.find(bet.user_id).update_attribute :money, bet.wager * 2 
          bet.update_attribute :win_status, true
        else
          bet.update_attribute :win_status, false
        end
      else
        if a_score > h_score.to_f + spread
          User.find(bet.user_id).update_attribute :money, bet.wager * 2 
          bet.update_attribute :win_status, true
        else
          bet.update_attribute :win_status, false
        end
      end
      bet.update_attribute :is_over, true
    end
  end
  
  def self.create_dummy_bets!
    #NFL Fake Head2Head bet generator
    #Sean C. Allen
    #CSU, Chico
    #CSCI 430

    going_to_bet = Integer
    game = Integer
    team = Integer
    cash = Integer
    
    temp = Integer

    for i in 0..50
      User.find(:all).each do |user|
        going_to_bet = rand(3)
        if going_to_bet == 1
          if user.money > 0
            cash = rand(user.money)+1
            game = rand(150)+1
            temp = rand(2)
            if temp == 0
              team = Game.find(game).home_team_id
            else
              team = Game.find(game).away_team_id
            end
            printf("\nbet %d on %s", cash, Team.find(team).short_name)
            user.update_attribute :money, user.money - cash
              Bet.create :user_id => user.id,
                       :game_id => game,
                       :team_id => team,
                       :wager => cash,
                       :is_over => false
        
              end
          self.update_bet!
        end
      end
    end
  end
end
  
  

