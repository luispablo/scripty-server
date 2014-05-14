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

ActiveRecord::Schema.define(version: 20140510201448) do

  create_table "commands", force: true do |t|
    t.integer  "server_id"
    t.string   "description"
    t.string   "command"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "commands", ["server_id"], name: "index_commands_on_server_id"

  create_table "devices", force: true do |t|
    t.integer  "user_id"
    t.string   "key"
    t.boolean  "email_checked"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "devices", ["user_id"], name: "index_devices_on_user_id"

  create_table "servers", force: true do |t|
    t.integer  "user_id"
    t.string   "description"
    t.string   "address"
    t.integer  "port"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "servers", ["user_id"], name: "index_servers_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "email_checked"
  end

end
