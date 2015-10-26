# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  project_id :integer
#

class Location < ActiveRecord::Base
	belongs_to :project
	
end
