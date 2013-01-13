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

ActiveRecord::Schema.define(:version => 20130113112749) do

  create_table "agent", :id => false, :force => true do |t|
    t.integer "id",           :limit => 2,   :null => false
    t.integer "server_id",    :limit => 2,   :null => false
    t.integer "last_contact",                :null => false
    t.integer "ip_address",                  :null => false
    t.string  "version",      :limit => 32,  :null => false
    t.string  "name",         :limit => 64,  :null => false
    t.string  "information",  :limit => 128, :null => false
  end

  create_table "alert", :id => false, :force => true do |t|
    t.integer "id",                         :null => false
    t.integer "server_id",   :limit => 2,   :null => false
    t.integer "rule_id",     :limit => 3,   :null => false
    t.integer "timestamp",                  :null => false
    t.integer "location_id", :limit => 2,   :null => false
    t.integer "src_ip"
    t.integer "dst_ip"
    t.integer "src_port",    :limit => 2
    t.integer "dst_port",    :limit => 2
    t.text    "alertid",     :limit => 255
  end

  add_index "alert", ["rule_id"], :name => "rule_id"
  add_index "alert", ["src_ip"], :name => "src_ip"
  add_index "alert", ["timestamp"], :name => "time"

  create_table "category", :primary_key => "cat_id", :force => true do |t|
    t.string "cat_name", :limit => 32, :null => false
  end

  add_index "category", ["cat_name"], :name => "cat_name", :unique => true
  add_index "category", ["cat_name"], :name => "cat_name_2"

  create_table "data", :id => false, :force => true do |t|
    t.integer   "id",                     :null => false
    t.integer   "server_id", :limit => 2, :null => false
    t.text      "user",                   :null => false
    t.text      "full_log",               :null => false
    t.timestamp "timestamp",              :null => false
  end

  add_index "data", ["timestamp"], :name => "time"

  create_table "location", :id => false, :force => true do |t|
    t.integer "id",        :limit => 2,   :null => false
    t.integer "server_id", :limit => 2,   :null => false
    t.string  "name",      :limit => 128, :null => false
  end

  create_table "server", :force => true do |t|
    t.integer "last_contact",                :null => false
    t.string  "version",      :limit => 32,  :null => false
    t.string  "hostname",     :limit => 64,  :null => false
    t.string  "information",  :limit => 128, :null => false
  end

  add_index "server", ["hostname"], :name => "hostname", :unique => true

  create_table "settings", :force => true do |t|
    t.string   "var",                      :null => false
    t.text     "value"
    t.integer  "thing_id"
    t.string   "thing_type", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "settings", ["thing_type", "thing_id", "var"], :name => "index_settings_on_thing_type_and_thing_id_and_var", :unique => true

  create_table "signature", :force => true do |t|
    t.integer "rule_id",     :limit => 3, :null => false
    t.integer "level",       :limit => 1
    t.string  "description",              :null => false
  end

  add_index "signature", ["level"], :name => "level"
  add_index "signature", ["rule_id"], :name => "rule_id", :unique => true
  add_index "signature", ["rule_id"], :name => "rule_id_2"

  create_table "signature_category_mapping", :id => false, :force => true do |t|
    t.integer "id",      :limit => 2, :null => false
    t.integer "rule_id", :limit => 3, :null => false
    t.integer "cat_id",  :limit => 2, :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
