# == Schema Information
#
# Table name: projects
#
#  id            :integer          not null, primary key
#  date          :date
#  headline      :string(255)
#  location      :string(255)
#  description   :text
#  type          :string(255)
#  status        :string(255)
#  paymentstatus :string(255)
#  client_id     :integer
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
