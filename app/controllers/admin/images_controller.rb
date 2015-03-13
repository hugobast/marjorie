module Admin
  class ImagesController < AdminController
    def index
      @images = Image.all
    end

    def new
      @image = Image.new
    end

    def create
      Image.create! image_params

      redirect_to action: :index
    end

    private

    def image_params
      params.require(:image).permit :image_file
    end
  end
end