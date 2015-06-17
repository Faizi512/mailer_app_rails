# == Schema Information
#
# Table name: models
#
#  id          :integer          not null, primary key
#  firstname   :string(255)
#  lastname    :string(255)
#  height      :integer
#  size        :integer
#  shoesize    :integer
#  haircolor   :string(255)
#  eyes        :string(255)
#  bust        :integer
#  waist       :integer
#  hips        :integer
#  phonenumber :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Model < ActiveRecord::Base
  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'}, :storage => :s3,
    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

    def s3_credentials 
    	{ :bucket => "ntpkhi", :access_key_id => "AKIAIQ6BFBC4L7GDHHCQ", :secret_access_key => "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" }
    end
 
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :phonenumber, length: { minimum: 10 }, uniqueness: true



  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end