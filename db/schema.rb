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

ActiveRecord::Schema.define(version: 20170615160228) do

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "website"
    t.string   "address"
    t.string   "fiscal_number"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "name"
    t.string   "degree"
    t.string   "location"
    t.string   "email"
    t.string   "phone"
    t.string   "portfolio"
    t.integer  "skill_id"
    t.string   "feedback"
    t.string   "deadline"
    t.string   "quality"
    t.string   "others_skills"
    t.text     "note"
    t.string   "image"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "github"
  end

  add_index "members", ["skill_id"], name: "index_members_on_skill_id"

  create_table "orders", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "payment"
    t.string   "deadline"
    t.integer  "skill_id"
    t.integer  "member_id"
    t.string   "description"
    t.string   "price"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "orders", ["client_id"], name: "index_orders_on_client_id"
  add_index "orders", ["member_id"], name: "index_orders_on_member_id"
  add_index "orders", ["skill_id"], name: "index_orders_on_skill_id"

  create_table "skills", force: :cascade do |t|
    t.string   "title"
    t.string   "icon"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
