class ClientsController < ApplicationController
  def index
    @clients = Client.important
    @tiles = Client.less_important
  end
end
