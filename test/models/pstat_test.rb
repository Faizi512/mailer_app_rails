# == Schema Information
#
# Table name: pstats
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  project_id :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class PstatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
