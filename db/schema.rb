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

ActiveRecord::Schema.define(version: 20180215194448) do

  create_table "airports", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "country_id"
    t.index ["country_id"], name: "index_airports_on_country_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.decimal "gdp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "country_crops", force: :cascade do |t|
    t.integer "country_id"
    t.integer "crop_id"
    t.decimal "yield"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_country_crops_on_country_id"
    t.index ["crop_id"], name: "index_country_crops_on_crop_id"
  end

  create_table "crops", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universities", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "country_id"
    t.index ["country_id"], name: "index_universities_on_country_id"
  end

end
