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

ActiveRecord::Schema.define(version: 20151205042519) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admissions", force: :cascade do |t|
    t.string   "title"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text     "content"
    t.text     "requirements"
    t.integer  "demands"
    t.text     "contact"
    t.integer  "university_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "picture"
  end

  add_index "admissions", ["university_id"], name: "index_admissions_on_university_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "president"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "instructor"
    t.string   "content"
    t.integer  "university_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "courses", ["university_id"], name: "index_courses_on_university_id", using: :btree

  create_table "jobdemands", force: :cascade do |t|
    t.text     "title"
    t.text     "overview"
    t.text     "reponsibility"
    t.text     "competency"
    t.text     "education"
    t.text     "workexperience"
    t.text     "lauguage"
    t.text     "other"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "news_events", force: :cascade do |t|
    t.string   "title"
    t.datetime "post_date"
    t.string   "author"
    t.text     "content"
    t.integer  "university_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "news_events", ["university_id"], name: "index_news_events_on_university_id", using: :btree

  create_table "scholarships", force: :cascade do |t|
    t.string   "title"
    t.string   "sponsor"
    t.integer  "award"
    t.text     "requirements"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text     "content"
    t.text     "contact"
    t.integer  "university_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "scholarships", ["university_id"], name: "index_scholarships_on_university_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "university"
    t.string   "major"
    t.string   "interestedfield"
    t.string   "history"
    t.string   "achievement"
    t.string   "hope"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
  end

  create_table "study_aboards", force: :cascade do |t|
    t.string   "title"
    t.string   "destination"
    t.datetime "start_time"
    t.integer  "duration"
    t.string   "sponsor"
    t.text     "requirements"
    t.text     "content"
    t.text     "contact"
    t.integer  "university_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "study_aboards", ["university_id"], name: "index_study_aboards_on_university_id", using: :btree

  create_table "universities", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.text     "introduction"
    t.text     "contact"
    t.text     "cooperation"
    t.integer  "rank"
    t.integer  "reputation"
    t.integer  "checked"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  add_index "universities", ["user_id"], name: "index_universities_on_user_id", using: :btree

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
    t.integer  "attr"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "admissions", "universities"
  add_foreign_key "courses", "universities"
  add_foreign_key "news_events", "universities"
  add_foreign_key "scholarships", "universities"
  add_foreign_key "study_aboards", "universities"
  add_foreign_key "universities", "users"
end
