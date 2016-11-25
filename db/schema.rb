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

ActiveRecord::Schema.define(version: 20161122213933) do

  create_table "assignments", force: :cascade do |t|
    t.integer  "course_id"
    t.string   "name"
    t.datetime "assigned_on"
    t.datetime "due_on"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["course_id"], name: "index_assignments_on_course_id"
  end

  create_table "attendances", force: :cascade do |t|
    t.integer  "membership_id"
    t.integer  "lesson_id"
    t.datetime "time"
    t.string   "status",        default: "unmarked"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["lesson_id"], name: "index_attendances_on_lesson_id"
    t.index ["membership_id"], name: "index_attendances_on_membership_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "location"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "grades", force: :cascade do |t|
    t.integer  "membership_id"
    t.integer  "assignment_id"
    t.decimal  "grade"
    t.text     "notes"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["assignment_id"], name: "index_grades_on_assignment_id"
    t.index ["membership_id"], name: "index_grades_on_membership_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.integer  "course_id"
    t.string   "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text     "description"
    t.text     "body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["course_id"], name: "index_lessons_on_course_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.string   "role"
    t.boolean  "is_admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_memberships_on_course_id"
    t.index ["user_id"], name: "index_memberships_on_user_id"
  end

  create_table "resources", force: :cascade do |t|
    t.integer  "assignment_id"
    t.integer  "lesson_id"
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["assignment_id"], name: "index_resources_on_assignment_id"
    t.index ["lesson_id"], name: "index_resources_on_lesson_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "prefix"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
