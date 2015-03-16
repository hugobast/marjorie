class Image < ActiveRecord::Base
  mount_uploader :image_file, ImageUploader

  class << self
    def sorted
      order created_at: :desc
    end
  end
end
