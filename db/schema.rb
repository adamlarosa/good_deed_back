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

ActiveRecord::Schema.define(version: 2019_12_17_000638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cases", force: :cascade do |t|
    t.string "fullname"
    t.string "location"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "case_id", null: false
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["case_id"], name: "index_comments_on_case_id"
  end

  create_table "health_care_facilities", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "incidents", force: :cascade do |t|
    t.bigint "case_id", null: false
    t.bigint "health_care_facility_id", null: false
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["case_id"], name: "index_incidents_on_case_id"
    t.index ["health_care_facility_id"], name: "index_incidents_on_health_care_facility_id"
  end

  create_table "user_cases", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "case_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["case_id"], name: "index_user_cases_on_case_id"
    t.index ["user_id"], name: "index_user_cases_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "fullname"
    t.string "about"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comments", "cases"
  add_foreign_key "incidents", "cases"
  add_foreign_key "incidents", "health_care_facilities"
  add_foreign_key "user_cases", "cases"
  add_foreign_key "user_cases", "users"
end
