module Admin
  class ClientsController < AdminController
    def index
      @clients = Client.all
    end

    def new
      @client = Client.new
    end

    def create
      Client.create! client_params

      redirect_to action: :index, flash: {
        success: 'New client was created'
      }
    end

    private

    def client_params
      params.require(:client).permit \
       %i(image_file statement name reference)
    end
  end
end
