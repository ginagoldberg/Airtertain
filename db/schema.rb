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

ActiveRecord::Schema.define(version: 20160607092158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.integer  "user_id"
    t.integer  "entertainer_id"
    t.string   "status"
    t.string   "address_street"
    t.string   "address_city"
    t.string   "address_zip"
    t.string   "address_num"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "booking_id"
    t.integer  "rating"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "reviews", ["booking_id"], name: "index_reviews_on_booking_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "entertainer"
    t.boolean  "available"
    t.string   "entertainer_name"
    t.text     "biography"
    t.string   "price"
    t.integer  "travel_range"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_foreign_key "bookings", "users"
  add_foreign_key "reviews", "bookings"
end
