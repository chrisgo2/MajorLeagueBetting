# == Schema Information
#
# Table name: leagues
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  short_name :string(255)
#  sport      :string(255)
#  logo_path  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class League < ActiveRecord::Base



end
