class CreateJoinTableEssaysCategories < ActiveRecord::Migration
  def change
    create_join_table :essays, :categories do |t|
      t.index [:essay_id, :category_id]
      t.index [:category_id, :essay_id]
    end
  end
end
