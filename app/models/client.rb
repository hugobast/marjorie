class Client < ActiveRecord::Base
  mount_uploader :image_file, ImageUploader

  class << self
    def important
      where %q(nullif(statement, '') is not null)
    end

    def less_important
      where %q(nullif(statement, '') is null)
    end
  end
end
