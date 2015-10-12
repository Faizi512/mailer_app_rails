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
    medium: '300x300>'
  }, :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/aws.yml",
    :bucket => "ntpkhi"
  
  do_not_validate_attachment_file_type :asset

  
end
