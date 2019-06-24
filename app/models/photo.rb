class User < ActiveRecord::Base
  mount_uploader :photo, photoUploader
end