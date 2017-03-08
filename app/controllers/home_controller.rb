class HomeController < ApplicationController
  def index
    @essays = Essay.front_paged.decorate.take(4)
  end
end
