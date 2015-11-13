class EssaysController < ApplicationController
  def show
    @essay = find_essay.decorate
  end

  private

  def find_essay
    Essay.friendly.find params[:id]
  end
end
