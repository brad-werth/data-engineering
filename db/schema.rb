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

ActiveRecord::Schema.define(version: 20150122192812) do

  create_table "addresses", force: true do |t|
    t.string   "street"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "description"
    t.decimal  "price",       precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merchants", force: true do |t|
    t.string   "name"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "merchants", ["address_id"], name: "index_merchants_on_address_id"

  create_table "purchase_import_purchases", force: true do |t|
    t.integer  "purchase_id"
    t.integer  "purchase_import_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchase_import_purchases", ["purchase_id"], name: "index_purchase_import_purchases_on_purchase_id"
  add_index "purchase_import_purchases", ["purchase_import_id"], name: "index_purchase_import_purchases_on_purchase_import_id"

  create_table "purchase_imports", force: true do |t|
    t.integer  "purchase_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchased_items", force: true do |t|
    t.integer  "purchase_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchased_items", ["item_id"], name: "index_purchased_items_on_item_id"
  add_index "purchased_items", ["purchase_id"], name: "index_purchased_items_on_purchase_id"

  create_table "purchases", force: true do |t|
    t.integer  "user_id"
    t.integer  "merchant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchases", ["merchant_id"], name: "index_purchases_on_merchant_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
