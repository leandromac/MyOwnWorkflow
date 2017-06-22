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

ActiveRecord::Schema.define(version: 20170622200746) do

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "website"
    t.string   "address"
    t.string   "fiscal_number"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
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
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "github"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "members", ["skill_id"], name: "index_members_on_skill_id"

  create_table "orders", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "payment"
    t.date     "deadline"
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

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer  "skill_id"
    t.integer  "member_id"
    t.string   "description"
    t.string   "price"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "order_id"
  end

  add_index "services", ["member_id"], name: "index_services_on_member_id"
  add_index "services", ["order_id"], name: "index_services_on_order_id"
  add_index "services", ["skill_id"], name: "index_services_on_skill_id"

  create_table "skills", force: :cascade do |t|
    t.string   "title"
    t.string   "icon"
    t.text     "description"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "members_count", default: 0
  end

end
