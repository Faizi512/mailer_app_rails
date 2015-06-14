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
    medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end