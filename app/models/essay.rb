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

    def months_of_publication
      front_paged
        .group_by(&:month_of_publication)
        .map(&method(:convert_to_publication_month))
    end

    def convert_to_publication_month(group)
      PublicationMonth.new(group.first, group.second.count)
    end

    def archived(year, month)
      beginning = Time.new(year, month)
      ending = beginning.end_of_month

      where(published_at: beginning..ending)
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

  def month_of_publication
    published_at.beginning_of_month
  end

  private

  PublicationMonth = Struct.new(:date, :count)
end
