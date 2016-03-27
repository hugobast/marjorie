class ClientsController < ApplicationController
  def index
    @clients = Client.by_importance
  end
end
