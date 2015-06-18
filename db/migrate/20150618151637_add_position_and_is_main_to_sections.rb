class AddPositionAndIsMainToSections < ActiveRecord::Migration
  def change
    add_column :sections, :position, :integer
    add_column :sections, :is_main, :boolean
  end
end
