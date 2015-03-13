class AddPublishedAtToEssays < ActiveRecord::Migration
  def change
    add_column :essays, :published_at, :datetime
  end
end
