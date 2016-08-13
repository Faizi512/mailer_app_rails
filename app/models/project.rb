# == Schema Information
#
# Table name: projects
#
#  id            :integer          not null, primary key
#  date          :date
#  headline      :string(255)
#  location      :string(255)
#  description   :text
#  ctype         :string(255)
#  status        :string(255)
#  paymentstatus :string(255)
#  client_id     :integer
#  created_at    :datetime
#  updated_at    :datetime
#  is_featured   :boolean          default(FALSE)
#  photographer  :string(255)
#

class Project < ActiveRecord::Base
  belongs_to :client
  has_many :locations
  has_many :photos



  validates :client_id, presence: true

 
end
