class AddCollaborationToClients < ActiveRecord::Migration
  def change
    add_column :clients, :collaboration, :boolean, default: false
  end
end
