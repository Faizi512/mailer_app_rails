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

ActiveRecord::Schema.define(version: 20160813025203) do

  create_table "admins", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "clients", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "nameofcontact"
    t.string   "phonenumber"
    t.string   "mailingaddress"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  add_index "clients", ["email"], name: "index_clients_on_email", unique: true

  create_table "ctypes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  add_index "locations", ["project_id"], name: "index_locations_on_project_id"

  create_table "models", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "heightfeet"
    t.string   "size"
    t.float    "shoesize"
    t.string   "haircolor"
    t.string   "eyes"
    t.float    "bust"
    t.float    "waist"
    t.float    "hips"
    t.string   "phonenumber"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.decimal  "heightinches"
    t.string   "city"
    t.integer  "age"
  end

  create_table "payment_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  add_index "payment_statuses", ["project_id"], name: "index_payment_statuses_on_project_id"

  create_table "photographers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phonenumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "asset_file_name"
    t.string   "asset_content_type"
    t.integer  "asset_file_size"
    t.datetime "asset_updated_at"
  end

  add_index "photos", ["project_id"], name: "index_photos_on_project_id"

  create_table "projects", force: true do |t|
    t.date     "date"
    t.string   "headline"
    t.string   "location"
    t.text     "description"
    t.string   "ctype"
    t.string   "status"
    t.string   "paymentstatus"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_featured",   default: false
    t.string   "photographer"
    t.boolean  "card",          default: false
  end

  add_index "projects", ["client_id", "created_at"], name: "index_projects_on_client_id_and_created_at"
  add_index "projects", ["client_id"], name: "index_projects_on_client_id"

  create_table "pstats", force: true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pstats", ["project_id"], name: "index_pstats_on_project_id"

  create_table "statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
