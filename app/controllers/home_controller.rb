class HomeController < ApplicationController
  def index
    @essays = Essay.front_paged.page params[:page]
  end
end
