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

ActiveRecord::Schema.define(:version => 20111220225938) do

  create_table "alkilers", :force => true do |t|
    t.string   "client_name"
    t.string   "client_document"
    t.string   "client_address"
    t.string   "client_phone"
    t.integer  "chairs"
    t.integer  "tables"
    t.integer  "table_cloths"
    t.integer  "table_cloths_special"
    t.integer  "big_tables"
    t.date     "date_init"
    t.date     "date_finish"
    t.integer  "abono"
    t.integer  "total"
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

end
