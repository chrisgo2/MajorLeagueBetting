
      #t.string    :title
      #t.string    :description
      #t.string    :type
      #t.string   :logo_path

class Achievement < ActiveRecord::Base
  belongs_to :user_achievement
    
    def self.update_from_web!
      
    require 'rubygems'
    require 'date'
    
    title = String.new
    description = String.new
    type = String.new
    logo_path = String.new    
      
      
      
    end 
end
