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

ActiveRecord::Schema.define(:version => 20140115111629) do

  create_table "comments", :force => true do |t|
    t.integer  "post_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "email"
    t.string   "link"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "messages", :force => true do |t|
    t.string   "subject"
    t.string   "name"
    t.string   "email"
    t.string   "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pages", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.string   "desc"
    t.string   "trailer"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "background_file_name"
    t.string   "background_content_type"
    t.integer  "background_file_size"
    t.datetime "background_updated_at"
    t.string   "screenshot1_file_name"
    t.string   "screenshot1_content_type"
    t.integer  "screenshot1_file_size"
    t.datetime "screenshot1_updated_at"
    t.string   "screenshot2_file_name"
    t.string   "screenshot2_content_type"
    t.integer  "screenshot2_file_size"
    t.datetime "screenshot2_updated_at"
    t.string   "screenshot3_file_name"
    t.string   "screenshot3_content_type"
    t.integer  "screenshot3_file_size"
    t.datetime "screenshot3_updated_at"
    t.string   "screenshot4_file_name"
    t.string   "screenshot4_content_type"
    t.integer  "screenshot4_file_size"
    t.datetime "screenshot4_updated_at"
    t.string   "screenshot5_file_name"
    t.string   "screenshot5_content_type"
    t.integer  "screenshot5_file_size"
    t.datetime "screenshot5_updated_at"
    t.string   "banner_file_name"
    t.string   "banner_content_type"
    t.integer  "banner_file_size"
    t.datetime "banner_updated_at"
    t.string   "screenshot6_file_name"
    t.string   "screenshot6_content_type"
    t.integer  "screenshot6_file_size"
    t.datetime "screenshot6_updated_at"
  end

  create_table "simple_captcha_data", :force => true do |t|
    t.string   "key",        :limit => 40
    t.string   "value",      :limit => 6
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "simple_captcha_data", ["key"], :name => "idx_key"

  create_table "siteinfos", :force => true do |t|
    t.string   "blurb"
    t.string   "about"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "banner_file_name"
    t.string   "banner_content_type"
    t.integer  "banner_file_size"
    t.datetime "banner_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
