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

class Client < ActiveRecord::Base
	
	before_save { self.email = email.downcase }
	validates :name, presence: true, length: { maximum: 50 }
  	 VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  		validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL },
                    uniqueness: { case_sensitive: false }
     has_secure_password
     validates :password, presence: true, length: { minimum: 6 }


end
