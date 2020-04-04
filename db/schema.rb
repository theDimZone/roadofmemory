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

ActiveRecord::Schema.define(version: 2020_04_04_104222) do

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
    t.string "type"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.index ["user_id"], name: "index_users_on_user_id"
  end

  create_table "veterans", force: :cascade do |t|
    t.string "name"
    t.string "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "troop_veterans", "troops"
  add_foreign_key "troop_veterans", "veterans"
  add_foreign_key "user_veterans", "users"
  add_foreign_key "user_veterans", "veterans"
  add_foreign_key "users", "users"
end
