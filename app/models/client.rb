class Client < ActiveRecord::Base
  mount_uploader :image_file, ImageUploader
end
