class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment_text
      t.integer :rating, default: 0
      t.boolean :recommended
      t.integer :user_id
      t.integer :recipe_id

      t.timestamps null: false
    end
  end
end
