# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_28_212042) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.text "region"
    t.text "province"
    t.text "unit_number"
    t.text "street_Number"
    t.text "city"
    t.text "posta_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id", null: false
    t.bigint "restaurant_id", null: false
    t.bigint "delivery_driver_id", null: false
    t.index ["customer_id"], name: "index_addresses_on_customer_id"
    t.index ["delivery_driver_id"], name: "index_addresses_on_delivery_driver_id"
    t.index ["restaurant_id"], name: "index_addresses_on_restaurant_id"
  end

  create_table "customer_addresses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id", null: false
    t.bigint "address_id", null: false
    t.index ["address_id"], name: "index_customer_addresses_on_address_id"
    t.index ["customer_id"], name: "index_customer_addresses_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_Name"
    t.string "last_Name"
    t.text "tel"
    t.text "email"
    t.text "allergies"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delivery_drivers", force: :cascade do |t|
    t.string "img_profile"
    t.string "first_Name"
    t.string "last_Name"
    t.text "delivery_method"
    t.text "licence_type"
    t.string "licence_img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "menu_item_name"
    t.integer "price"
    t.string "menu_item_img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_menu_items_on_restaurant_id"
  end

  create_table "order_menu_items", force: :cascade do |t|
    t.integer "qty_ordered"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_statuses", force: :cascade do |t|
    t.text "status_option"
    t.boolean "active"
    t.boolean "pending"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "order_id", null: false
    t.index ["order_id"], name: "index_order_statuses_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date "order_date"
    t.integer "delivery_fee"
    t.integer "total_Amount"
    t.date "requested_delivery_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id", null: false
    t.bigint "restaurant_id", null: false
    t.integer "status", default: 0
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
    t.index ["status"], name: "index_orders_on_status"
  end

  create_table "payments", force: :cascade do |t|
    t.string "payment_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id", null: false
    t.index ["customer_id"], name: "index_payments_on_customer_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "star"
    t.text "leave_a_review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id", null: false
    t.bigint "restaurant_id", null: false
    t.index ["customer_id"], name: "index_ratings_on_customer_id"
    t.index ["restaurant_id"], name: "index_ratings_on_restaurant_id"
  end

  create_table "restaurant_menu_items", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "restaurant_id", null: false
    t.bigint "menu_item_id", null: false
    t.index ["menu_item_id"], name: "index_restaurant_menu_items_on_menu_item_id"
    t.index ["restaurant_id"], name: "index_restaurant_menu_items_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "restaurant_Name"
    t.boolean "is_verified"
    t.boolean "in_holiday"
    t.date "re_open_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id", null: false
    t.index ["customer_id"], name: "index_restaurants_on_customer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "addresses", "customers"
  add_foreign_key "addresses", "delivery_drivers"
  add_foreign_key "addresses", "restaurants"
  add_foreign_key "customer_addresses", "addresses"
  add_foreign_key "customer_addresses", "customers"
  add_foreign_key "menu_items", "restaurants"
  add_foreign_key "order_statuses", "orders"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "restaurants"
  add_foreign_key "payments", "customers"
  add_foreign_key "ratings", "customers"
  add_foreign_key "ratings", "restaurants"
  add_foreign_key "restaurant_menu_items", "menu_items"
  add_foreign_key "restaurant_menu_items", "restaurants"
  add_foreign_key "restaurants", "customers"
end
