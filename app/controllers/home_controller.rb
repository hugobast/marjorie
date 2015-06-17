class HomeController < ApplicationController
  def index
    @essays = Essay.front_paged
  end
end
