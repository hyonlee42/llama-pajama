class Photo < ActiveRecord::Base
  mount_uploader :photo, photoUploader
end