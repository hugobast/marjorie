class SectionsController < ApplicationController
  def show
    @essays = section.essays.sorted.published.page params[:page]
  end

  private

  def section
    @section ||= Section.friendly.find params[:id]
  end
end
