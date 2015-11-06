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
#  is_featured   :boolean
#

class Project < ActiveRecord::Base
  belongs_to :client
  has_many :locations
  has_many :photos
  has_one :photographer

  default_scope -> { order(created_at: :desc) }
  validates :client_id, presence: true

 
end
