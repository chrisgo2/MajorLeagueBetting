# == Schema Information
#
# Table name: teams
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  conference :string(255)
#  league_id  :integer
#  stat_type  :string(255)
#  stat_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Team < ActiveRecord::Base


  belongs_to :league

end
