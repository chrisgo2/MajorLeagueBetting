      #t.integer :user_id
      #t.integer :achievement_id
      #t.string :name
class UserAchievement < ActiveRecord::Base
   has_and_belongs_to_many :users
   
  
  def self.update_A
  require 'date'
  
  user_id = current_user.id
  achievement_id = Integer.new
  name = String.new
  
  
  
    self.update_A
  end
  end