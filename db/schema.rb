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

ActiveRecord::Schema.define(version: 20170403033026) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anecdotes", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "illnesses", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.float    "latitude"
    t.string   "longitude"
    t.string   "ip_address"
    t.string   "street_address"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.boolean  "kiosk"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["ip_address"], name: "index_locations_on_ip_address", using: :btree
  end

  create_table "researches", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "location_id"
    t.integer  "anecdote_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["anecdote_id"], name: "index_stories_on_anecdote_id", using: :btree
    t.index ["location_id"], name: "index_stories_on_location_id", using: :btree
    t.index ["user_id"], name: "index_stories_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
