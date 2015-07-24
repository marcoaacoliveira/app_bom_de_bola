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

ActiveRecord::Schema.define(version: 20150724190439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "matches", force: true do |t|
    t.integer  "team_id1_id"
    t.integer  "team_id2_id"
    t.date     "date"
    t.integer  "field_id_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matches", ["field_id_id"], name: "index_matches_on_field_id_id", using: :btree
  add_index "matches", ["team_id1_id"], name: "index_matches_on_team_id1_id", using: :btree
  add_index "matches", ["team_id2_id"], name: "index_matches_on_team_id2_id", using: :btree

  create_table "players", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.integer  "red",          default: 0
    t.integer  "yellow",       default: 0
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "total_yellow", default: 0
    t.integer  "punishment",   default: 0
  end

  add_index "players", ["team_id"], name: "index_players_on_team_id", using: :btree

  create_table "teams", force: true do |t|
    t.string   "name",       limit: 150
    t.integer  "user_id"
    t.integer  "red"
    t.integer  "yellow"
    t.integer  "rpa"
    t.string   "category",   limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.date     "born_at"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
