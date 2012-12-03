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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121128114608) do

  create_table "apps", :force => true do |t|
    t.string   "app_name"
    t.string   "color"
    t.string   "background"
    t.boolean  "back_design"
    t.string   "icon"
    t.boolean  "icon_design"
    t.string   "splash"
    t.boolean  "splash_design"
    t.float    "price"
    t.integer  "status"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "apps", ["app_name"], :name => "index_apps_on_app_name"
  add_index "apps", ["status"], :name => "index_apps_on_status"
  add_index "apps", ["user_id"], :name => "index_apps_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "name_company"
    t.string   "url"
    t.integer  "phone"
    t.string   "address"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email"

end
