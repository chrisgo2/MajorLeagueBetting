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

require 'spec_helper'

describe Achievement do
  pending "add some examples to (or delete) #{__FILE__}"
end
