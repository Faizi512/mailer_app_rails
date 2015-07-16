# == Schema Information
#
# Table name: clients
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  name            :string(255)
#  nameofcontact   :string(255)
#  phonenumber     :string(255)
#  mailingaddress  :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#

require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
