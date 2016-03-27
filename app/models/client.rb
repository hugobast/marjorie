class Client < ActiveRecord::Base
  mount_uploader :image_file, ImageUploader

  class << self
    def important
      where(%q(nullif(statement, '') is not null))
        .where collaboration: false
    end

    def less_important
      where(%q(nullif(statement, '') is null))
        .where collaboration: false
    end

    def collaborations
      where collaboration: true
    end
  end
end
