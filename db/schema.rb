# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160106034423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_ingredients", id: false, force: :cascade do |t|
    t.integer "category_id",   null: false
    t.integer "ingredient_id", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "rating",      default: 0
    t.boolean  "recommended"
    t.integer  "user_id"
    t.integer  "recipe_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "comments_recipes", id: false, force: :cascade do |t|
    t.integer "recipe_id",  null: false
    t.integer "comment_id", null: false
  end

  create_table "comments_users", id: false, force: :cascade do |t|
    t.integer "user_id",    null: false
    t.integer "comment_id", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.string   "ingredient_image_url", default: "https://pbs.twimg.com/profile_images/1181241190/JL.jpeg"
    t.integer  "expiration"
    t.integer  "category_id"
    t.string   "quantity"
    t.datetime "created_at",                                                                               null: false
    t.datetime "updated_at",                                                                               null: false
  end

  create_table "ingredients_recipes", id: false, force: :cascade do |t|
    t.integer "ingredient_id", null: false
    t.integer "recipe_id",     null: false
  end

  create_table "ingredients_users", id: false, force: :cascade do |t|
    t.integer "ingredient_id", null: false
    t.integer "user_id",       null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.integer  "user_id"
    t.integer  "category_id"
    t.string   "cook_time"
    t.string   "prep_time"
    t.string   "total_time"
    t.integer  "calories_per_serving"
    t.integer  "ingredient_id"
    t.integer  "comment_id"
    t.string   "ingredients"
    t.string   "instructions"
    t.decimal  "rating",               precision: 1, scale: 1, default: 0.0
    t.string   "source"
    t.integer  "likes",                                        default: 0
    t.boolean  "gluten_free",                                  default: false
    t.boolean  "paleo",                                        default: false
    t.boolean  "vegetarian",                                   default: false
    t.boolean  "vegan",                                        default: false
    t.integer  "saved_by"
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
  end

  create_table "recipes_users", id: false, force: :cascade do |t|
    t.integer "user_id",   null: false
    t.integer "recipe_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "handle"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "recipe_id"
    t.integer  "ingredient_id"
    t.string   "my_fridge"
    t.string   "profile_image_url", default: "http://chefmixer.com/Content/images/DefaultChefProfile.png"
    t.boolean  "super_chef"
    t.integer  "liked_recipes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["handle"], name: "index_users_on_handle", unique: true, using: :btree

end
