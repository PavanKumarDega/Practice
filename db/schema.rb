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

ActiveRecord::Schema.define(version: 2022_07_14_121636) do

  create_table "ceos", force: :cascade do |t|
    t.string "name"
    t.string "company_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clients_managers", id: false, force: :cascade do |t|
    t.integer "client_id", null: false
    t.integer "manager_id", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "dept"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "manager_id", null: false
    t.index ["manager_id"], name: "index_employees_on_manager_id"
  end

  create_table "managers", force: :cascade do |t|
    t.string "name"
    t.string "dept"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "project_id", null: false
    t.index ["project_id"], name: "index_managers_on_project_id"
  end

  create_table "mettings", force: :cascade do |t|
    t.string "time"
    t.integer "project_id", null: false
    t.integer "employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_mettings_on_employee_id"
    t.index ["project_id"], name: "index_mettings_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "project_name"
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "student_id", null: false
    t.integer "teacher_id", null: false
    t.index ["student_id"], name: "index_rooms_on_student_id"
    t.index ["teacher_id"], name: "index_rooms_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "employees", "managers"
  add_foreign_key "managers", "projects"
  add_foreign_key "mettings", "employees"
  add_foreign_key "mettings", "projects"
  add_foreign_key "rooms", "students"
  add_foreign_key "rooms", "teachers"
end
