class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image_url
      t.integer :user_id
      t.integer :category_id
      t.string :cook_time
      t.string :prep_time
      t.string :total_time
      t.integer :calories_per_serving
      t.integer :ingredient_id
      t.integer :comment_id
      t.text :list_ingredients
      t.text :instructions
      t.decimal :rating, precision: 1, scale: 1, default: 0
      t.string :source
      t.integer :likes, default: 0
      t.boolean :gluten_free, default: false
      t.boolean :paleo, default: false
      t.boolean :vegetarian, default: false
      t.boolean :vegan, default: false
      t.integer :saved_by #saved by different users/user_id

      t.timestamps null: false
    end
  end
end
