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

ActiveRecord::Schema.define(version: 0) do

  create_table "departments", :options => 'ENGINE=MyISAM' , primary_key: "dept_no", force: :cascade do |t|
    t.string "dept_name", limit: 40, null: false
  end

  add_index "departments", ["dept_name"], name: "dept_name", unique: true, using: :btree

  create_table "dept_emp", :options => 'ENGINE=MyISAM', id: false, force: :cascade do |t|
    t.integer "emp_no",    limit: 4, null: false
    t.string  "dept_no",   limit: 4, null: false
    t.date    "from_date",           null: false
    t.date    "to_date",             null: false
  end

  add_index "dept_emp", ["dept_no"], name: "dept_no", using: :btree
  add_index "dept_emp", ["emp_no"], name: "emp_no", using: :btree

  create_table "dept_manager", :options => 'ENGINE=MyISAM', id: false, force: :cascade do |t|
    t.string  "dept_no",   limit: 4, null: false
    t.integer "emp_no",    limit: 4, null: false
    t.date    "from_date",           null: false
    t.date    "to_date",             null: false
  end

  add_index "dept_manager", ["dept_no"], name: "dept_no", using: :btree
  add_index "dept_manager", ["emp_no"], name: "emp_no", using: :btree

  create_table "employees", :options => 'ENGINE=MyISAM', primary_key: "emp_no", force: :cascade do |t|
    t.date   "birth_date",            null: false
    t.string "first_name", limit: 14, null: false
    t.string "last_name",  limit: 16, null: false
    t.string "gender",     limit: 1,  null: false
    t.date   "hire_date",             null: false
  end

  create_table "salaries", :options => 'ENGINE=MyISAM', id: false, force: :cascade do |t|
    t.integer "emp_no",    limit: 4, null: false
    t.integer "salary",    limit: 4, null: false
    t.date    "from_date",           null: false
    t.date    "to_date",             null: false
  end

  add_index "salaries", ["emp_no"], name: "emp_no", using: :btree

  create_table "titles", :options => 'ENGINE=MyISAM', id: false, force: :cascade do |t|
    t.integer "emp_no",    limit: 4,  null: false
    t.string  "title",     limit: 50, null: false
    t.date    "from_date",            null: false
    t.date    "to_date"
  end

  add_index "titles", ["emp_no"], name: "emp_no", using: :btree

  add_foreign_key "dept_emp", "departments", column: "dept_no", primary_key: "dept_no", name: "dept_emp_ibfk_2", on_delete: :cascade
  add_foreign_key "dept_emp", "employees", column: "emp_no", primary_key: "emp_no", name: "dept_emp_ibfk_1", on_delete: :cascade
  add_foreign_key "dept_manager", "departments", column: "dept_no", primary_key: "dept_no", name: "dept_manager_ibfk_2", on_delete: :cascade
  add_foreign_key "dept_manager", "employees", column: "emp_no", primary_key: "emp_no", name: "dept_manager_ibfk_1", on_delete: :cascade
  add_foreign_key "salaries", "employees", column: "emp_no", primary_key: "emp_no", name: "salaries_ibfk_1", on_delete: :cascade
  add_foreign_key "titles", "employees", column: "emp_no", primary_key: "emp_no", name: "titles_ibfk_1", on_delete: :cascade
end
