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

ActiveRecord::Schema.define(version: 2022_07_20_044212) do

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.string "qualification"
    t.string "stream"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.integer "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_courses_on_account_id"
  end

  create_table "courses_payments", id: false, force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "payment_id", null: false
  end

  create_table "domains", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "salary"
    t.integer "domain_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "Company_id", null: false
    t.index ["Company_id"], name: "index_employees_on_Company_id"
    t.index ["domain_id"], name: "index_employees_on_domain_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "time"
    t.string "address"
    t.integer "user_id", null: false
    t.integer "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "paid_fee"
    t.integer "total_fee"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "institute_name"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "review_companies", force: :cascade do |t|
    t.string "review"
    t.string "reviewable_type"
    t.integer "reviewable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "review"
    t.string "reviewable_type"
    t.string "reviewable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "courses", "accounts"
  add_foreign_key "employees", "Companies"
  add_foreign_key "employees", "domains"
  add_foreign_key "orders", "products"
  add_foreign_key "orders", "users"
end
