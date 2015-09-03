# == Schema Information
#
# Table name: statuses
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Status < ActiveRecord::Base

	validates :name, presence: true

	default_scope -> { order('name ASC') }
	
end
