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
        notice: "Client: #{client.name} was updated"
      }
    end

    def create
      Client.create! client_params

      redirect_to admin_clients_path, flash: {
        notice: 'New client was created'
      }
    end

    def destroy
      client = Client.find params[:id]
      client.destroy

      redirect_to admin_clients_path, flash: {
        notice: "Client: #{client.name} was deleted"
      }
    end

    private

    def client_params
      params.require(:client).permit \
       %i(image_file statement name reference website collaboration position)
    end
  end
end
