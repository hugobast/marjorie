class HomeController < ApplicationController
  def index
    @essays = Essay.all
  end
end