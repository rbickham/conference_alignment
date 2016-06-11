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

ActiveRecord::Schema.define(version: 20160610014400) do

  create_table "conference_histories", force: :cascade do |t|
    t.integer  "left"
    t.integer  "joined"
    t.integer  "conference_id"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conferences", force: :cascade do |t|
    t.string   "headquarters"
    t.integer  "members"
    t.integer  "founded"
    t.string   "conference_nickname"
    t.string   "conference_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: :cascade do |t|
    t.integer  "joined"
    t.string   "school_nickname"
    t.string   "conference_name"
    t.string   "school_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
