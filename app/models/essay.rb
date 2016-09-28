class Essay < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :section
  has_and_belongs_to_many :categories

  class << self
    def sorted
      order published_at: :desc
    end

    def published
      where(state: :published)
    end

    def orphaned
      where(section: nil)
    end

    def main
      includes(:section).
        references(:sections).
        where(sections: { is_main: true })
    end

    def front_paged
      published.main.sorted
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
