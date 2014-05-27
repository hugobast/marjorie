module Admin
  class EssaysController < AdminController
    def index
      @essays = Essay.all
    end

    def show
      @essay = Essay.find(params[:id])
    end

    def edit
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