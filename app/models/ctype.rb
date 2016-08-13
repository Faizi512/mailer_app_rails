# == Schema Information
#
# Table name: ctypes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Ctype < ActiveRecord::Base
  
	default_scope -> { order('name ASC') }
	validates :name, presence: true, uniqueness: { case_sensitive: false }
end
