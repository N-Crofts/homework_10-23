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

ActiveRecord::Schema.define(version: 2018_10_24_013232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.string "size"
    t.string "integer"
    t.string "alcoholic"
    t.string "boolean"
    t.bigint "fridge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fridge_id"], name: "index_drinks_on_fridge_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.string "weight"
    t.string "integer"
    t.string "vegan"
    t.string "boolean"
    t.string "timestamp"
    t.bigint "fridge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fridge_id"], name: "index_foods_on_fridge_id"
  end

  create_table "fridges", force: :cascade do |t|
    t.string "location"
    t.string "brand"
    t.string "size"
    t.string "integer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "drinks", "fridges"
  add_foreign_key "foods", "fridges"
end
