class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :image_file
      t.string :reference
      t.string :statement
      t.string :name

      t.timestamps null: false
    end
  end
end
