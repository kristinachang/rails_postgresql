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

ActiveRecord::Schema.define(version: 20150603021124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entries", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.string   "breakfast"
    t.string   "lunch"
    t.string   "dinner"
    t.string   "snack1"
    t.string   "snack2"
    t.string   "snack3"
    t.string   "kcal"
    t.string   "protein"
    t.string   "fats"
    t.string   "carbs"
    t.string   "servings"
    t.string   "food_name"
    t.string   "totals"
    t.integer  "mood"
    t.integer  "pain"
    t.text     "message"
    t.integer  "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "category"
    t.string   "name"
    t.string   "target"
    t.string   "description"
    t.text     "video1"
    t.text     "video2"
    t.text     "video3"
    t.text     "photo1"
    t.text     "photo2"
    t.text     "photo3"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "media", force: :cascade do |t|
    t.string   "name"
    t.string   "media_type"
    t.string   "media_url"
    t.integer  "exercise_id"
    t.integer  "trainer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string   "theme"
    t.integer  "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_type"
    t.integer  "trainer_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "age"
    t.string   "phone"
    t.string   "occupation"
    t.string   "certifications"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "workouts", force: :cascade do |t|
    t.integer  "load"
    t.integer  "sets"
    t.integer  "reps"
    t.string   "speed"
    t.integer  "program_id"
    t.integer  "exercise_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
