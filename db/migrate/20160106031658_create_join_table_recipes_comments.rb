class CreateJoinTableRecipesComments < ActiveRecord::Migration
  def change
    create_join_table :recipes, :comments do |t|
      # t.index [:recipe_id, :comment_id]
      # t.index [:comment_id, :recipe_id]
    end
  end
end
