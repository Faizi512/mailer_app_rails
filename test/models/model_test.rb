# == Schema Information
#
# Table name: models
#
#  id                  :integer          not null, primary key
#  firstname           :string(255)
#  lastname            :string(255)
#  heightfeet          :integer
#  size                :string(255)
#  shoesize            :float
#  haircolor           :string(255)
#  eyes                :string(255)
#  bust                :float
#  waist               :float
#  hips                :float
#  phonenumber         :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  heightinches        :decimal(, )
#  city                :string(255)
#  age                 :integer
#

require 'test_helper'

class ModelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
