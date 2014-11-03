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

ActiveRecord::Schema.define(version: 20141103060644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dungeons", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "inventory_id"
    t.string   "inventory_type"
  end

  create_table "maps", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "paths", force: true do |t|
    t.string   "direction"
    t.integer  "destination"
    t.boolean  "available"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "room_id"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "status"
    t.integer  "health"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "room_id"
    t.integer  "user_id"
  end

  create_table "rooms", force: true do |t|
    t.string   "name"
    t.text     "short_desc"
    t.text     "full_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "map_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "password_digest"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
