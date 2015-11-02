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

class Model < ActiveRecord::Base
  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'}, :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/aws.yml",
    :bucket => "ntpkhi3"
 
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :phonenumber, length: { minimum: 10 }, uniqueness: true



  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
