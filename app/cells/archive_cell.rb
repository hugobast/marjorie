class ArchiveCell < Cell::ViewModel
  include Cell::Translation
  include ActionView::Helpers::TranslationHelper

  def index
    @archives = Essay.months_of_publication

    render
  end

  def formatted(archive)
    "#{l(archive.month, format: :archive, locale: :fr)} (#{archive.count})"
  end
end