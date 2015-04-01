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

ActiveRecord::Schema.define(version: 20150331235314) do

  create_table "sapphire_cms_content_blocks", force: :cascade do |t|
    t.string   "title",             limit: 255
    t.string   "slug",              limit: 255
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version"
    t.string   "status",            limit: 255
    t.string   "layout_block_slug", limit: 255
    t.boolean  "precache",                      default: false
    t.string   "controller"
  end

  add_index "sapphire_cms_content_blocks", ["slug", "version"], name: "index_sapphire_cms_content_blocks_on_slug_and_version", unique: true

end
