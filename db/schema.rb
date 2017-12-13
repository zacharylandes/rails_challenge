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

ActiveRecord::Schema.define(version: 20171213223814) do

  create_table "addresses", force: :cascade do |t|
    t.integer "student_id"
    t.string "street"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.string "description"
    t.index ["student_id"], name: "index_addresses_on_student_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
  end

  create_table "courses_students", id: false, force: :cascade do |t|
    t.integer "Course_id", null: false
    t.integer "Student_id", null: false
    t.index ["Course_id", "Student_id"], name: "index_Courses_Students_on_course_id_and_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
  end

end
