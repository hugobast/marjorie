class SectionsController < ApplicationController
  def show
    @essays = section.essays.sorted.published
  end

  private

  def section
    @section ||= Section.friendly.find params[:id]
  end
end
