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
    
    end 
end
