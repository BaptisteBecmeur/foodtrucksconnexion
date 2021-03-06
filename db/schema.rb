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

ActiveRecord::Schema.define(version: 20151120153809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foodtrucks", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "category"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
  end

  add_index "foodtrucks", ["user_id"], name: "index_foodtrucks_on_user_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.datetime "date"
    t.text     "content"
    t.integer  "user_id"
    t.integer  "foodtruck_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "messages", ["foodtruck_id"], name: "index_messages_on_foodtruck_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "reservations", force: :cascade do |t|
    t.date     "date"
    t.float    "price"
    t.string   "comment"
    t.integer  "rating"
    t.integer  "user_id"
    t.integer  "foodtruck_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "people"
  end

  add_index "reservations", ["foodtruck_id"], name: "index_reservations_on_foodtruck_id", using: :btree
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "uid"
    t.string   "picture"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.string   "provider"
    t.string   "phone_number"
    t.string   "city"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "foodtrucks", "users"
  add_foreign_key "messages", "foodtrucks"
  add_foreign_key "messages", "users"
  add_foreign_key "reservations", "foodtrucks"
  add_foreign_key "reservations", "users"
end
