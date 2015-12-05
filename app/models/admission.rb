class Admission < ActiveRecord::Base
  belongs_to :university
  mount_uploader :picture, PictureUploader
end
