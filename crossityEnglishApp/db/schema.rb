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

ActiveRecord::Schema.define(version: 20180226052614) do

  create_table "answers", force: :cascade do |t|
    t.text     "text",        limit: 65535
    t.integer  "user_id",     limit: 4
    t.integer  "question_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "asks", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.text     "text",        limit: 65535
    t.integer  "user_id",     limit: 4
    t.integer  "question_id", limit: 4
  end

  create_table "feed_contents", force: :cascade do |t|
    t.integer  "content_id",   limit: 4
    t.string   "content_type", limit: 255
    t.integer  "group_id",     limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "key",        limit: 255
    t.text     "detail",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "participants", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "question_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "number",      limit: 255
    t.string   "nickname",    limit: 255
  end

  create_table "questions", force: :cascade do |t|
    t.text     "text",       limit: 65535
    t.integer  "user_id",    limit: 4
    t.integer  "group_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "when",       limit: 255
    t.string   "where",      limit: 255
    t.string   "what",       limit: 255
    t.string   "how_much",   limit: 255
  end

  create_table "social_profiles", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.string   "provider",    limit: 255
    t.string   "uid",         limit: 255
    t.string   "name",        limit: 255
    t.string   "nickname",    limit: 255
    t.string   "email",       limit: 255
    t.string   "url",         limit: 255
    t.string   "image_url",   limit: 255
    t.string   "description", limit: 255
    t.text     "other",       limit: 65535
    t.text     "credentials", limit: 65535
    t.text     "raw_info",    limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "social_profiles", ["user_id"], name: "index_social_profiles_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "group_id",               limit: 4
    t.string   "family_name",            limit: 255
    t.string   "first_name",             limit: 255
    t.string   "family_name_kana",       limit: 255
    t.string   "first_name_kana",        limit: 255
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size",       limit: 4
    t.datetime "avatar_updated_at"
    t.string   "nickname",               limit: 255
    t.string   "language",               limit: 255
    t.string   "pastime",                limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "social_profiles", "users"
end
