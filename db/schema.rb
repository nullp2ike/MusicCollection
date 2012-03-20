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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120320185907) do

  create_table "albums", :force => true do |t|
    t.string   "title"
    t.integer  "year"
    t.string   "picture"
    t.string   "description"
    t.integer  "artist"
    t.integer  "label"
    t.integer  "genre"
    t.integer  "format"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "artists", :force => true do |t|
    t.string   "artist"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "collections", :force => true do |t|
    t.integer  "album"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "formats", :force => true do |t|
    t.string   "format"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genres", :force => true do |t|
    t.string   "genre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "labels", :force => true do |t|
    t.string   "label"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tracklists", :force => true do |t|
    t.integer  "album"
    t.integer  "tracknr"
    t.string   "trackname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
