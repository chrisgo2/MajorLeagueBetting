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

require 'spec_helper'

describe Team do
  pending "add some examples to (or delete) #{__FILE__}"
end
