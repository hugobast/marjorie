class AddStateToEssays < ActiveRecord::Migration
  def change
    add_column :essays, :state, :string
  end
end
