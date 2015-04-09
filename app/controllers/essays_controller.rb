class EssaysController < ApplicationController
  def show
    @essay = Essay.friendly.find params[:id]
  end
end