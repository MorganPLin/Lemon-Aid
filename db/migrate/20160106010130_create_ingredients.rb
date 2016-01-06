class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :ingredient_image_url, default: "https://pbs.twimg.com/profile_images/1181241190/JL.jpeg"
      t.integer :expiration #expiration days every 24 hours from timestamp, -1
      t.integer :category_id
      t.string :quantity

      t.timestamps null: false
    end
  end
end
