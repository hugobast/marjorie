class Client < ActiveRecord::Base
  mount_uploader :image_file, ImageUploader

  class << self
    def ordered
      order(position: :asc)
    end

    def important
      ordered
        .where(%q(nullif(statement, '') is not null))
        .where collaboration: false
    end

    def less_important
      ordered
        .where(%q(nullif(statement, '') is null))
        .where collaboration: false
    end

    def collaborations
      ordered
        .where collaboration: true
    end
  end

  def display
    return 'collaboration' if collaboration
    return 'full' unless statement.empty?
    return 'logo' if image_file?

    'text'
  end
end
