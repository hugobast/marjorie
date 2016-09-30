class ArchiveCell < Cell::ViewModel
  include Cell::Translation
  include ActionView::Helpers::TranslationHelper

  def index
    @grouped_archives = Essay.months_of_publication.in_groups_of(5, false)
    @visible_archives = @grouped_archives.shift || []

    render
  end

  def formatted(archive)
    "#{l(archive.date, format: :archive, locale: :fr)} (#{archive.count})"
  end
end