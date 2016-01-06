class CreateJoinTableCategoriesIngredients < ActiveRecord::Migration
  def change
    create_join_table :categories, :ingredients do |t|
      # t.index [:category_id, :ingredient_id]
      # t.index [:ingredient_id, :category_id]
    end
  end
end
