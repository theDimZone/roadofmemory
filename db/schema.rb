# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_05_064118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "troop_veterans", force: :cascade do |t|
    t.bigint "troop_id"
    t.bigint "veteran_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["troop_id"], name: "index_troop_veterans_on_troop_id"
    t.index ["veteran_id"], name: "index_troop_veterans_on_veteran_id"
  end

  create_table "troops", force: :cascade do |t|
    t.string "trooptype"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "troop_id"
    t.string "ancestry"
    t.index ["ancestry"], name: "index_troops_on_ancestry"
    t.index ["troop_id"], name: "index_troops_on_troop_id"
  end

  create_table "user_veterans", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "veteran_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_veterans_on_user_id"
    t.index ["veteran_id"], name: "index_user_veterans_on_veteran_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "socialtoken"
    t.string "socialtype"
    t.integer "score"
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "socialid"
    t.string "ancestry"
    t.index ["ancestry"], name: "index_users_on_ancestry"
    t.index ["user_id"], name: "index_users_on_user_id"
  end

  create_table "veterans", force: :cascade do |t|
    t.string "name"
    t.string "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "lastname"
    t.string "surname"
    t.text "description"
    t.boolean "moderated"
    t.string "photo_file_name"
    t.string "photo_content_type"
    t.integer "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_foreign_key "troop_veterans", "troops"
  add_foreign_key "troop_veterans", "veterans"
  add_foreign_key "troops", "troops"
  add_foreign_key "user_veterans", "users"
  add_foreign_key "user_veterans", "veterans"
  add_foreign_key "users", "users"
end
