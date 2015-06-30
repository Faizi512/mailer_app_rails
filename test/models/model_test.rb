# == Schema Information
#
# Table name: models
#
#  id                  :integer          not null, primary key
#  firstname           :string(255)
#  lastname            :string(255)
#  height              :integer
#  size                :integer
#  shoesize            :integer
#  haircolor           :string(255)
#  eyes                :string(255)
#  bust                :integer
#  waist               :integer
#  hips                :integer
#  phonenumber         :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

require 'test_helper'

class ModelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
