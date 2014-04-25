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

ActiveRecord::Schema.define(version: 20140422051809) do

  create_table "buildings", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "user_id"
    t.decimal  "gps_long",   precision: 8, scale: 5
    t.decimal  "gps_lat",    precision: 8, scale: 5
    t.integer  "campus_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campus", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notifications", force: true do |t|
    t.string   "dept_name"
    t.string   "dept_email"
    t.boolean  "mandatory",  default: true
    t.integer  "lead_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.string   "photo_dir"
    t.string   "photo_name"
    t.integer  "building_id"
    t.integer  "room_id"
    t.integer  "photo_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean  "ksu_class"
    t.integer  "user_id"
    t.integer  "room_id"
    t.integer  "status_id"
    t.integer  "setup_time"
    t.integer  "teardown"
    t.boolean  "dining_svcs"
    t.integer  "no_of_pp"
    t.boolean  "setup_reqd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.integer  "max_capacity"
    t.string   "floor"
    t.string   "room_num"
    t.decimal  "int_cost",              precision: 10, scale: 0
    t.decimal  "ext_cost",              precision: 10, scale: 0
    t.boolean  "ext_use_allowed"
    t.integer  "whiteboards"
    t.integer  "overhead"
    t.boolean  "computer_connectivity"
    t.boolean  "wireless_access"
    t.boolean  "projection_system"
    t.boolean  "sound_system"
    t.boolean  "stage"
    t.integer  "multi_level"
    t.string   "restrictions"
    t.integer  "buildingpk"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "group_org_name"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "contact_ph1"
    t.string   "contact_ph2"
    t.string   "email_address"
    t.string   "email_address2"
    t.boolean  "allow_reservation"
    t.string   "userid"
    t.string   "password"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
