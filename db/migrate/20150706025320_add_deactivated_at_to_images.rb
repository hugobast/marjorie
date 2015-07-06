class AddDeactivatedAtToImages < ActiveRecord::Migration
  def change
    add_column :images, :deactivated_at, :timestamp
  end
end
