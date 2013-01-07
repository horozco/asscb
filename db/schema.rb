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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130107150354) do

  create_table "grades", :force => true do |t|
    t.string   "name"
    t.string   "classroom"
    t.string   "level"
    t.integer  "group_director_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "grades", ["group_director_id"], :name => "index_grades_on_group_director_id"

  create_table "parent_guardians", :force => true do |t|
    t.string   "full_name"
    t.string   "residential_address"
    t.float    "residential_latitude"
    t.float    "residential_longitude"
    t.string   "phone_number"
    t.string   "cellphone_number"
    t.string   "email"
    t.string   "occupation"
    t.string   "company_name"
    t.string   "company_address"
    t.float    "company_latitude"
    t.float    "company_longitude"
    t.string   "company_phone"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "relationships", :force => true do |t|
    t.string   "name"
    t.integer  "student_id"
    t.integer  "parent_guardian_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "relationships", ["parent_guardian_id"], :name => "index_relationships_on_parent_guardian_id"
  add_index "relationships", ["student_id"], :name => "index_relationships_on_student_id"

  create_table "students", :force => true do |t|
    t.string   "first_name"
    t.string   "second_name"
    t.string   "type_id"
    t.string   "number_id"
    t.datetime "birthdate"
    t.string   "birthplace"
    t.string   "email"
    t.string   "phone_number"
    t.string   "cellphone_number"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "grade_id"
    t.string   "house_members"
    t.integer  "number_of_brothers"
    t.integer  "age_position"
    t.string   "type_of_health"
    t.string   "name_health"
    t.string   "physical_problems"
    t.string   "allergies"
    t.string   "medicines"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "observations"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "students", ["grade_id"], :name => "index_students_on_grade_id"

end
