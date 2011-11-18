# == Schema Information
#
# Table name: teams
#
#  id             :integer         not null, primary key
#  league_id      :integer
#  conference     :string(255)
#  division       :string(255)
#  name           :string(255)
#  short_name     :string(255)
#  logo_path      :string(255)
#  wins           :integer
#  losses         :integer
#  ties           :integer
#  home_wins      :integer
#  home_losses    :integer
#  road_wins      :integer
#  road_losses    :integer
#  div_wins       :integer
#  div_losses     :integer
#  conf_wins      :integer
#  conf_losses    :integer
#  points_for     :integer
#  points_against :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'spec_helper'

describe Team do
  pending "add some examples to (or delete) #{__FILE__}"
end
