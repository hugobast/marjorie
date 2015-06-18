class Section < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :essays, dependent: :nullify

  class << self
    def ordered
      order(position: :asc)
    end
  end
end
