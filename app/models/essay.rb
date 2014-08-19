class Essay < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
