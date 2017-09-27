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

ActiveRecord::Schema.define(version: 20170926234456) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arcades", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "design_id"
    t.index ["design_id"], name: "index_arcades_on_design_id", using: :btree
    t.index ["order_id"], name: "index_arcades_on_order_id", using: :btree
  end

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "component_arcades", force: :cascade do |t|
    t.integer  "arcade_id"
    t.integer  "component_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["arcade_id"], name: "index_component_arcades_on_arcade_id", using: :btree
    t.index ["component_id"], name: "index_component_arcades_on_component_id", using: :btree
  end

  create_table "components", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "brand_id"
    t.index ["brand_id"], name: "index_components_on_brand_id", using: :btree
  end

  create_table "designs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "phone"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "arcades", "designs"
  add_foreign_key "arcades", "orders"
  add_foreign_key "component_arcades", "arcades"
  add_foreign_key "component_arcades", "components"
  add_foreign_key "components", "brands"
  add_foreign_key "orders", "users"
end
