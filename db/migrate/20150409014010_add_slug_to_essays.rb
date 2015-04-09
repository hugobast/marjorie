class AddSlugToEssays < ActiveRecord::Migration
  def change
    add_column :essays, :slug, :string
    add_index :essays, :slug, unique: true
  end
end
