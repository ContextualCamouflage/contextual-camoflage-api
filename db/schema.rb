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

ActiveRecord::Schema.define(version: 20170404212159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anecdotes", force: :cascade do |t|
    t.text     "body"
    t.string   "cookie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cookie"], name: "index_anecdotes_on_cookie", using: :btree
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "researches", force: :cascade do |t|
    t.string   "gender"
    t.string   "age"
    t.string   "race"
    t.string   "occupation"
    t.string   "cookie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cookie"], name: "index_researches_on_cookie", using: :btree
  end

  create_table "submissions", force: :cascade do |t|
    t.string   "illness"
    t.string   "cookie"
    t.string   "relationship"
    t.string   "zip_code"
    t.string   "city"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "ip_address"
    t.index ["cookie"], name: "index_submissions_on_cookie", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
