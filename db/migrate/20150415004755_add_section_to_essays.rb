class AddSectionToEssays < ActiveRecord::Migration
  def change
    add_reference :essays, :section, index: true
    add_foreign_key :essays, :sections
  end
end
