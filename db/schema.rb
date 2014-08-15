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

ActiveRecord::Schema.define(version: 20140815082535) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: true do |t|
    t.integer  "artist_id",     null: false
    t.string   "title",         null: false
    t.string   "genre"
    t.string   "description"
    t.integer  "year_released"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "albums", ["artist_id", "title"], name: "index_albums_on_artist_id_and_title", using: :btree
  add_index "albums", ["title"], name: "index_albums_on_title", using: :btree

  create_table "artists", force: true do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "modified_at"
  end

  add_index "artists", ["name"], name: "index_artists_on_name", unique: true, using: :btree

  create_table "songs", force: true do |t|
    t.string   "title",      null: false
    t.integer  "length"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "album_id"
    t.integer  "artist_id"
  end

  add_index "songs", ["album_id", "artist_id"], name: "index_songs_on_album_id_and_artist_id", using: :btree
  add_index "songs", ["title"], name: "index_songs_on_title", using: :btree

end
