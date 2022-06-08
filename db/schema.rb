# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_08_182830) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "clients", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "nameofcontact"
    t.string "phonenumber"
    t.string "mailingaddress"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "logo_file_name"
    t.string "logo_content_type"
    t.integer "logo_file_size"
    t.datetime "logo_updated_at"
    t.string "password_digest"
    t.index ["email"], name: "index_clients_on_email", unique: true
  end

  create_table "ctypes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "project_id"
    t.index ["project_id"], name: "index_locations_on_project_id"
  end

  create_table "models", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.integer "heightfeet"
    t.string "size"
    t.float "shoesize"
    t.string "haircolor"
    t.string "eyes"
    t.float "bust"
    t.float "waist"
    t.float "hips"
    t.string "phonenumber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.decimal "heightinches"
    t.string "city"
    t.integer "age"
  end

  create_table "photographers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phonenumber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "photos", force: :cascade do |t|
    t.integer "project_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "asset_file_name"
    t.string "asset_content_type"
    t.bigint "asset_file_size"
    t.datetime "asset_updated_at"
    t.index ["project_id"], name: "index_photos_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.date "date"
    t.string "headline"
    t.string "location"
    t.text "description"
    t.string "ctype"
    t.string "status"
    t.string "paymentstatus"
    t.integer "client_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_featured", default: false
    t.string "photographer"
    t.boolean "card", default: false
    t.index ["client_id", "created_at"], name: "index_projects_on_client_id_and_created_at"
    t.index ["client_id"], name: "index_projects_on_client_id"
  end

  create_table "pstats", force: :cascade do |t|
    t.string "name"
    t.integer "project_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_pstats_on_project_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
