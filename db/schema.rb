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

ActiveRecord::Schema.define(version: 2020_03_15_225451) do

  create_table "account_lines", force: :cascade do |t|
    t.float "total"
    t.integer "sale_id"
    t.integer "current_account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["current_account_id"], name: "index_account_lines_on_current_account_id"
    t.index ["sale_id"], name: "index_account_lines_on_sale_id"
  end

  create_table "account_payments", force: :cascade do |t|
    t.float "total"
    t.integer "current_account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["current_account_id"], name: "index_account_payments_on_current_account_id"
  end

  create_table "account_statuses", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.float "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "current_accounts", force: :cascade do |t|
    t.float "total"
    t.integer "cliente_id"
    t.integer "account_status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_status_id"], name: "index_current_accounts_on_account_status_id"
    t.index ["cliente_id"], name: "index_current_accounts_on_cliente_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "purchase_price"
    t.float "sale_price"
    t.integer "total_stock"
    t.integer "min_stock"
    t.integer "type_id"
    t.integer "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_products_on_provider_id"
    t.index ["type_id"], name: "index_products_on_type_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "business_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sale_lines", force: :cascade do |t|
    t.integer "quantity"
    t.float "subtotal"
    t.integer "product_id"
    t.integer "sale_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sale_lineable_id"
    t.string "sale_lineable_type"
    t.index ["product_id"], name: "index_sale_lines_on_product_id"
    t.index ["sale_id"], name: "index_sale_lines_on_sale_id"
  end

  create_table "sales", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
