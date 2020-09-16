# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_16_094451) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "address_one"
    t.string "address_two"
    t.string "phone_number"
    t.bigint "invoice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_clients_on_invoice_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "currency"
    t.date "date"
    t.decimal "tax", precision: 10, scale: 2, default: "0.0"
    t.decimal "sub_total", precision: 10, scale: 2, default: "0.0"
    t.decimal "total", precision: 10, scale: 2, default: "0.0"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "issuers", force: :cascade do |t|
    t.string "name"
    t.string "address_one"
    t.string "address_two"
    t.string "phone_number"
    t.bigint "invoice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_issuers_on_invoice_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "serial_number"
    t.decimal "price", precision: 10, scale: 2, default: "0.0"
    t.integer "quantity", default: 0
    t.bigint "invoice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_products_on_invoice_id"
  end

  add_foreign_key "clients", "invoices"
  add_foreign_key "issuers", "invoices"
  add_foreign_key "products", "invoices"
end
