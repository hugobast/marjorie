class Client < ActiveRecord::Base
  mount_uploader :image_file, ImageUploader

  class << self
    def by_importance
      order %q(nullif(statement, '') nulls last)
    end
  end
end
