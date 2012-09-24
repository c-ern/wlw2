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

ActiveRecord::Schema.define(:version => 20120924184430) do

  create_table "affiliations", :force => true do |t|
    t.integer  "company_id"
    t.integer  "facility_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "assemblies", :force => true do |t|
    t.integer  "facility_id"
    t.integer  "combination_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "car_body_styles", :force => true do |t|
    t.string   "name"
    t.string   "wikipedia_url"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "combinations", :force => true do |t|
    t.integer  "product_id"
    t.integer  "car_body_style_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "image_url"
    t.string   "wikipedia_url"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "facilities", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "wikipedia_url"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "wikipedia_url"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
