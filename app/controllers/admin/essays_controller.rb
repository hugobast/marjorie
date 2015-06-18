module Admin
  class EssaysController < AdminController
    before_action :load_images, only: %i(new edit)
    before_action :find_essay, only: %i(show edit update publish)

    def index
      @essays = Essay.sorted
    end

    def show; end

    def edit; end

    def new
      @essay = Essay.new content: '<p>Put your text here...</p>'
    end

    def update
      Essays::Update.new(self).call @essay, essay_params
    end

    def create
      Essays::Create.new(self).call essay_params
    end

    def publish
      @essay.drafted? ? @essay.publish! : @essay.draft!

      redirect_to :back
    end

    def updated_successfully
      redirect_to [:admin, @essay], notice: 'Essay was updated successfully'
    end

    def created_successfully(essay)
      redirect_to [:admin, essay], notice: 'Essay was created successfully'
    end

    def update_failed
      redirect_to [:admin, @essay], flash: { error: 'Essay failed to save' }
    end

    private

    def essay_params
      params.require(:essay).permit :title, :content, :image, :section_id
    end

    def find_essay
      @essay ||= Essay.friendly.find params[:id]
    end

    def load_images
      @images ||= Image.sorted
    end
  end
end
