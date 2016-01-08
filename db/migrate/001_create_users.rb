
class CreateUsers < ActiveRecord::Migration

  def change
    create_table :users do |t|

      #for log-in
      t.string :first_name
      t.string :last_name
      t.string :handle
      t.string :email
      t.string :password_digest

      #for inside profile information
      t.integer :recipe_id #recipe id of your entered recipe ie myrecipes
      t.integer :ingredient_id #1 to many
      t.string :my_fridge, default: "My Fridge" #name of fridge
      t.string :profile_image_url, default: "http://chefmixer.com/Content/images/DefaultChefProfile.png"
      t.boolean :super_chef, default: false
      t.integer :liked_recipes #recipe id of grabbed recipe
      t.index(:email, unique: true)
      t.index(:handle, unique: true) #both are unique

      t.timestamps
    end
  end
end
