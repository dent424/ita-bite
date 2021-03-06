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

ActiveRecord::Schema.define(:version => 20121109081455) do

  create_table "approvals", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "machine_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "changes", :force => true do |t|
    t.integer  "count"
    t.integer  "total"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "ingredient_id"
    t.integer  "add_remove"
  end

  add_index "changes", ["ingredient_id"], :name => "index_changes_on_ingredient_id"

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "employees", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "first_name"
    t.string   "last_name"
  end

  create_table "ingredients", :force => true do |t|
    t.float    "measure1"
    t.float    "measure2"
    t.float    "measure3"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "total"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.integer  "pieces"
    t.string   "blue_print_number"
    t.date     "completion"
    t.integer  "job_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "identification"
    t.string   "round_square"
  end

  create_table "jobs", :force => true do |t|
    t.string   "name"
    t.string   "billing"
    t.text     "description"
    t.date     "in_date"
    t.date     "target"
    t.date     "actual"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "client_id"
    t.string   "contact"
    t.integer  "priority"
  end

  create_table "machines", :force => true do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "machine_type"
  end

  create_table "misc_ingredients", :force => true do |t|
    t.string   "description"
    t.date     "order_date"
    t.date     "delivery_date"
    t.string   "material"
    t.integer  "item_id"
    t.integer  "pieces"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "operations", :force => true do |t|
    t.text     "notes"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "item_id"
    t.integer  "machine_id"
    t.integer  "employee_id"
    t.integer  "approval_id"
  end

  create_table "rounds", :force => true do |t|
    t.float    "diameter"
    t.float    "length"
    t.float    "pieces"
    t.integer  "item_id"
    t.date     "order_date"
    t.date     "delivery_date"
    t.string   "material"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "squares", :force => true do |t|
    t.float    "length"
    t.float    "width"
    t.float    "thickness"
    t.integer  "pieces"
    t.integer  "item_id"
    t.date     "order_date"
    t.date     "delivery_date"
    t.string   "material"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "subcontractors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "subcontracts", :force => true do |t|
    t.integer  "subcontractor_id"
    t.integer  "item_id"
    t.date     "out"
    t.date     "in"
    t.date     "estimated"
    t.text     "notes"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
