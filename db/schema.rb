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

ActiveRecord::Schema.define(version: 20151112131520) do

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invites", force: :cascade do |t|
    t.integer  "accept"
    t.date     "timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "meeting_id"
    t.integer  "member_id"
  end

  add_index "invites", ["meeting_id"], name: "index_invites_on_meeting_id"
  add_index "invites", ["member_id"], name: "index_invites_on_member_id"

  create_table "meetings", force: :cascade do |t|
    t.date     "meetDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "group_id"
  end

  add_index "meetings", ["group_id"], name: "index_meetings_on_group_id"

  create_table "members", force: :cascade do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "password"
  end

  create_table "memberships", force: :cascade do |t|
    t.date     "joined"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "group_id"
    t.integer  "member_id"
  end

  add_index "memberships", ["group_id"], name: "index_memberships_on_group_id"
  add_index "memberships", ["member_id"], name: "index_memberships_on_member_id"

end
