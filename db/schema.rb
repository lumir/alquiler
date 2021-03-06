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

ActiveRecord::Schema.define(:version => 20120513045158) do

  create_table "alkilers", :force => true do |t|
    t.string   "client_name"
    t.string   "client_document"
    t.string   "client_address"
    t.string   "client_phone"
    t.integer  "chairs"
    t.integer  "tables"
    t.integer  "cloth_tables"
    t.integer  "special_cloth_tables"
    t.integer  "big_tables"
    t.string   "date_init"
    t.string   "date_finish"
    t.integer  "abono"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "fecha_id"
  end

  create_table "fechas", :force => true do |t|
    t.string   "alkiler_date"
    t.integer  "max_chairs"
    t.integer  "max_tables"
    t.integer  "max_big_tables"
    t.integer  "max_cloth_tables"
    t.integer  "max_special_cloth_tables"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "units"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "visitors", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
