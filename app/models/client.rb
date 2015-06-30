# == Schema Information
#
# Table name: clients
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  name                   :string(255)
#  nameofcontact          :string(255)
#  phonenumber            :string(255)
#  mailingaddress         :string(255)
#  logo_file_name         :string(255)
#  logo_content_type      :string(255)
#  logo_file_size         :integer
#  logo_updated_at        :datetime
#

class Client < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 has_attached_file :logo, styles: {
    thumb: '150x150>',
    square: '200x200#',
}, :storage => :s3,
    :s3_credentials => Proc.new{|b| b.instance.s3_credentials }

    def s3_credentials 
    	{ :bucket => "ntpkhi", :access_key_id => "AKIAIQ6BFBC4L7GDHHCQ", :secret_access_key => "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" }
    end


  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/

end
