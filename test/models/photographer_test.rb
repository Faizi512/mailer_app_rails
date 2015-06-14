# == Schema Information
#
# Table name: photographers
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  email       :string(255)
#  phonenumber :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class PhotographerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
