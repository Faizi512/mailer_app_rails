# == Schema Information
#
# Table name: photos
#
#  id                 :integer          not null, primary key
#  project_id         :integer
#  created_at         :datetime
#  updated_at         :datetime
#  asset_file_name    :string(255)
#  asset_content_type :string(255)
#  asset_file_size    :integer
#  asset_updated_at   :datetime
#

class Photo < ActiveRecord::Base
  belongs_to :project

    has_attached_file :asset, styles: {
    thumb: '100x100>',
    square: '200x200#',
    featured: '1200x800',
    preview: '200x300>',
    carousel:""
  }, :convert_options => { :carousel => "-gravity center -crop 1400x720+0+0" }, :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/aws.yml",
    :bucket => "ntpkhi3", default_url: "/images/:style/missing.png"

   
  
  do_not_validate_attachment_file_type :asset
  validates_attachment_size :asset, :less_than => 4.megabytes

  
end
