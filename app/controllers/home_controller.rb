class HomeController < ApplicationController
  def index
    @essays = Essay.front_paged.page params[:page]

    @essays = @essays.archived(year, month) if archive_request?
  end

  private

  def month
    params[:month]
  end

  def year
    params[:year]
  end

  def archive_request?
    params.include?(:year) && params.include?(:month)
  end
end
