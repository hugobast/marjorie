class Essay < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  class << self
    def sorted
      order published_at: :desc
    end
  end

  state_machine initial: :drafted do
    transition drafted: :published, on: :publish
    transition published: :drafted, on: :draft

    after_transition drafted: :published, do: :mark_published
  end

  def mark_published
    touch :published_at
  end
end
