class HomeController < ApplicationController
  def index
    @essays = Essay.sorted
  end
end