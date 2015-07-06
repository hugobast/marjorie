class Image < ActiveRecord::Base
  mount_uploader :image_file, ImageUploader

  class << self
    def sorted
      order created_at: :desc
    end

    def active
      where deactivated_at: nil
    end
  end

  def deactivate!
    touch :deactivated_at
  end
end
