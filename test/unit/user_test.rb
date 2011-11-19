# == Schema Information
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  username           :string(255)
#  email              :string(255)
#  encrypted_password :string(255)
#  salt               :string(255)
#  money              :integer
#  created_at         :datetime
#  updated_at         :datetime
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
