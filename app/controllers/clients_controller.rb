class ClientsController < ApplicationController
  def index
    @clients = Client.important
    @tiles = Client.less_important
    @collabs = Client.collaborations
  end
end
