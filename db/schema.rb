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

ActiveRecord::Schema.define(version: 20171214195843) do

  create_table "movements", force: :cascade do |t|
    t.string "name"
    t.boolean "primary"
    t.boolean "accessory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musclegroups", force: :cascade do |t|
    t.string "name"
    t.integer "workset_id"
    t.integer "movement_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movement_id"], name: "index_musclegroups_on_movement_id"
    t.index ["user_id"], name: "index_musclegroups_on_user_id"
    t.index ["workset_id"], name: "index_musclegroups_on_workset_id"
  end

  create_table "muscles", force: :cascade do |t|
    t.string "name"
    t.integer "workset_id"
    t.integer "muscslegroup_id"
    t.integer "movement_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movement_id"], name: "index_muscles_on_movement_id"
    t.index ["muscslegroup_id"], name: "index_muscles_on_muscslegroup_id"
    t.index ["user_id"], name: "index_muscles_on_user_id"
    t.index ["workset_id"], name: "index_muscles_on_workset_id"
  end

  create_table "training_sessions", force: :cascade do |t|
    t.integer "duration"
    t.integer "rating"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_training_sessions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.text "bio"
    t.string "location"
    t.integer "age"
    t.integer "height"
    t.integer "weight"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "worksets", force: :cascade do |t|
    t.integer "repetitions"
    t.integer "external_load"
    t.boolean "warm_up"
    t.boolean "work_set"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "training_session_id"
    t.index ["user_id"], name: "index_worksets_on_user_id"
  end

end
