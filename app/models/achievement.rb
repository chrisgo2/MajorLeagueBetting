# == Schema Information
#
# Table name: achievements
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :string(255)
#  type        :string(255)
#  logo_path   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#


class Achievement < ActiveRecord::Base
  belongs_to :user_achievement
  
    def self.update_A
<<<<<<< HEAD
      
    #require 'rubygems'
    #require 'date'
    #
    #title = String.new
    #description = String.new
    #type = String.new
    #logo_path = String.new
    #
    #
    
=======

>>>>>>> d5608698cae2f643fd68036f5f8f3fec55a4cbb8
      #Bet.each do |f|
      #
      #      if (( Bet.find(:all, :conditions => ["win_status=?", true])).count == 0 )
      #            Achievement.find(1).title
      #            
      #            Achievement.each do |g|
      #              g.create(:user_id => current_user.id, :achievement_id => 1)
      #            end
      #            g.save!
      #              f.save!
      #      end
      #end
<<<<<<< HEAD
      
      
      self.update_A
=======
    
>>>>>>> d5608698cae2f643fd68036f5f8f3fec55a4cbb8
    end 
end
