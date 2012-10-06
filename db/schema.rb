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

ActiveRecord::Schema.define(:version => 20121006055713) do

  create_table "changes", :force => true do |t|
    t.integer  "count"
    t.integer  "total"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "ingredient_id"
    t.integer  "add_remove"
  end

  add_index "changes", ["ingredient_id"], :name => "index_changes_on_ingredient_id"

  create_table "ingredients", :force => true do |t|
    t.float    "measure1"
    t.float    "measure2"
    t.float    "measure3"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "total"
  end

end
