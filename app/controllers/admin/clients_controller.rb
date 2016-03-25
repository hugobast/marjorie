module Admin
  class ClientsController < AdminController
    def index
      @clients = Client.all
    end

    def new
      @client = Client.new
    end

    def edit
      @client = Client.find params[:id]
    end

    def update
      client = Client.find params[:id]
      client.update client_params

      redirect_to admin_clients_path, flash: {
        message: "Client: #{client.name} was created"
      }
    end

    def create
      Client.create! client_params

      redirect_to admin_clients_path, flash: {
        message: 'New client was created'
      }
    end

    private

    def client_params
      params.require(:client).permit \
       %i(image_file statement name reference website)
    end
  end
end
