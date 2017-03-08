class ServiceCell < Cell::ViewModel
  property :title, :description

  def index
    @services = cell(:service, collection: Service.all)

    render
  end
end
