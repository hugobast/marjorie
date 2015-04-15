module Admin
  class SectionsController < AdminController
    def index
      @sections = Section.all
    end

    def new
      @section = Section.new
    end

    def edit
      @section = Section.friendly.find params[:id]
    end

    def create
      Section.create! section_params

      redirect_to({ action: :index }, notice: 'Section was created successfully')
    end

    def update
      section = Section.friendly.find params[:id]
      section.update_attributes! section_params

      redirect_to({ action: :index }, notice: 'Section was updated successfully')
    end

    def destroy
      section = Section.friendly.find params[:id]
      section.destroy

      redirect_to({ action: :index }, notice: 'Section was removed')
    end

    private

    def section_params
      params.require(:section).permit :name
    end
  end
end