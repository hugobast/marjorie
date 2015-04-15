module Admin
  class SectionsController < AdminController
    def index
      @sections = Section.all
    end

    def new
      @section = Section.new
    end

    def create
      Section.create! section_params

      redirect_to({ action: :index }, notice: 'Section was created successfully')
    end

    private

    def section_params
      params.require(:section).permit :name
    end
  end
end