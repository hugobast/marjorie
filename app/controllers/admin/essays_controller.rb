module Admin
  class EssaysController < AdminController
    layout 'application'

    def index

    end

    def show
      @essay = Essay.find(params[:id])
    end

    def new
      @essay = Essay.new
    end

    def create
      @essay = Essay.create!(essay_params)
      redirect_to [:admin, @essay], notice: 'Essay was saved successfully'
    end

    private

    def essay_params
      params.require(:essay).permit(:title, :content)
    end
  end
end