module Admin
  class ClientsController < AdminController
    def index

    end

    def new
      @client = Client.new
    end
  end
end
