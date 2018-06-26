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

ActiveRecord::Schema.define(version: 2018_06_26_213727) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "order_histories", force: :cascade do |t|
    t.datetime "date"
    t.string "unique_id"
    t.string "client_company_name"
    t.string "buyer_name"
    t.string "label"
    t.string "purchase_family_1"
    t.string "purchase_family_2"
    t.decimal "amount"
    t.string "type_contract_string"
    t.bigint "supplier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_order_histories_on_supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "siret"
    t.string "corporate_name"
    t.string "juridic_status"
    t.integer "relance_mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "order_histories", "suppliers"
end
