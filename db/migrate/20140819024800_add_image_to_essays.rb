class AddImageToEssays < ActiveRecord::Migration
  def change
    add_column :essays, :image, :string
  end
end
