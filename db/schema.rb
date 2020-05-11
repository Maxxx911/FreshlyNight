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

ActiveRecord::Schema.define(version: 2020_05_11_200501) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calories", force: :cascade do |t|
    t.bigint "dish_id"
    t.integer "protein_value", default: 0, null: false
    t.integer "carbohydrates_value", default: 0, null: false
    t.integer "fat_value", default: 0, null: false
    t.integer "total_calories", default: 0, null: false
    t.index ["dish_id"], name: "index_calories_on_dish_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.index ["name"], name: "index_categories_on_name"
  end

  create_table "categories_dishes", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "dish_id"
    t.index ["category_id"], name: "index_categories_dishes_on_category_id"
    t.index ["dish_id"], name: "index_categories_dishes_on_dish_id"
  end

  create_table "comment_dishes", force: :cascade do |t|
    t.bigint "comment_id"
    t.bigint "dish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_comment_dishes_on_comment_id"
    t.index ["dish_id"], name: "index_comment_dishes_on_dish_id"
  end

  create_table "comment_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_comment_users_on_comment_id"
    t.index ["user_id"], name: "index_comment_users_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "components", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "weight", default: 1, null: false
  end

  create_table "components_dishes", force: :cascade do |t|
    t.bigint "component_id"
    t.bigint "dish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["component_id"], name: "index_components_dishes_on_component_id"
    t.index ["dish_id"], name: "index_components_dishes_on_dish_id"
  end

  create_table "components_products", force: :cascade do |t|
    t.bigint "component_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["component_id"], name: "index_components_products_on_component_id"
    t.index ["product_id"], name: "index_components_products_on_product_id"
  end

  create_table "dish_images", force: :cascade do |t|
    t.bigint "image_id"
    t.bigint "dish_id"
    t.index ["dish_id"], name: "index_dish_images_on_dish_id"
    t.index ["image_id"], name: "index_dish_images_on_image_id"
  end

  create_table "dish_menus", force: :cascade do |t|
    t.bigint "menu_id"
    t.bigint "dish_id"
    t.index ["dish_id"], name: "index_dish_menus_on_dish_id"
    t.index ["menu_id"], name: "index_dish_menus_on_menu_id"
  end

  create_table "dishes", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "total_rating", default: 0, null: false
  end

  create_table "image_menus", force: :cascade do |t|
    t.bigint "image_id"
    t.bigint "menu_id"
    t.index ["image_id"], name: "index_image_menus_on_image_id"
    t.index ["menu_id"], name: "index_image_menus_on_menu_id"
  end

  create_table "image_recepts", force: :cascade do |t|
    t.bigint "image_id"
    t.bigint "recept_id"
    t.index ["image_id"], name: "index_image_recepts_on_image_id"
    t.index ["recept_id"], name: "index_image_recepts_on_recept_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "url", default: "t", null: false
    t.string "title", default: "t", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.integer "rating", default: 0, null: false
    t.text "description", default: "", null: false
    t.string "title", default: "", null: false
    t.bigint "calory_id"
    t.index ["calory_id"], name: "index_menus_on_calory_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "weight", default: 1, null: false
  end

  create_table "recepts", force: :cascade do |t|
    t.bigint "dish_id"
    t.integer "rating", default: 0, null: false
    t.string "title", default: "0", null: false
    t.text "steps", default: "", null: false
    t.index ["dish_id"], name: "index_recepts_on_dish_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.bigint "dish_id"
    t.bigint "user_id"
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_votes_on_dish_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

end
