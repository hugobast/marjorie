module Admin
  class EssaysController < AdminController
    before_action :load_images, only: %i(new edit)
    before_action :find_essay, only: %i(show edit update)

    def index
      @essays = Essay.all
    end

    def show; end

    def edit; end

    def update
      if @essay.update_attributes(essay_params)
        redirect_to admin_essay_path(@essay), flash: { success: 'Essay was saved successfully' }
      else
        redirect_to edit_admin_essay_path(@essay), flash: { error: 'Essay failed to save' }
      end
    end

    def new
      @essay = Essay.new content: '<p>Put your text here...</p>'
    end

    def create
      @essay = Essay.create!(essay_params)
      redirect_to [:admin, @essay], notice: 'Essay was saved successfully'
    end

    private

    def essay_params
      params.require(:essay).permit(:title, :content, :image)
    end

    def find_essay
      @essay ||= Essay.find params[:id]
    end

    def load_images
      @images ||= Image.sorted
    end
  end
end