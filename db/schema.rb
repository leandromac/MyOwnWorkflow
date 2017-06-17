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

ActiveRecord::Schema.define(version: 20170617105749) do

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
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
