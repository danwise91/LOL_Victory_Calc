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

ActiveRecord::Schema.define(version: 20160513221616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "add_champions_to_players", force: :cascade do |t|
    t.string   "c1"
    t.string   "c2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "p1"
    t.string   "p2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "c1"
    t.string   "c2"
  end

  create_table "tteams", force: :cascade do |t|
    t.string   "p1"
    t.string   "p2"
    t.string   "p3"
    t.string   "p4"
    t.string   "p5"
    t.string   "p6"
    t.string   "c1"
    t.string   "c2"
    t.string   "c3"
    t.string   "c4"
    t.string   "c5"
    t.string   "c6"
    t.integer  "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
