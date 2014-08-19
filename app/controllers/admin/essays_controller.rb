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

    def update
      @essay = Essay.find(params[:id])

      if @essay.update_attributes(essay_params)
        redirect_to admin_essay_path(@essay), notice: 'Essay was saved successfully'
      else
        redirect_to edit_admin_essay_path(@essay), error: 'Essay failed to save'
      end
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
      params.require(:essay).permit(:title, :content, :image)
    end
  end
end