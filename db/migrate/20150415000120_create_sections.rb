class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.string :slug

      t.timestamps null: false
    end
    add_index :sections, :slug, unique: true
  end
end
