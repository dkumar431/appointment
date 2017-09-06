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

ActiveRecord::Schema.define(version: 20170905152953) do

  create_table "bookings", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "clinic_id"
    t.integer  "doctor_id"
    t.integer  "slot_id"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_bookings_on_clinic_id"
    t.index ["doctor_id"], name: "index_bookings_on_doctor_id"
    t.index ["patient_id"], name: "index_bookings_on_patient_id"
    t.index ["slot_id"], name: "index_bookings_on_slot_id"
  end

  create_table "clinics", force: :cascade do |t|
    t.string   "name"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "city"
    t.string   "state"
    t.bigint   "zip"
    t.decimal  "longitue"
    t.decimal  "latitude"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "clinics_doctors", id: false, force: :cascade do |t|
    t.integer "doctor_id", null: false
    t.integer "clinic_id", null: false
  end

  create_table "doctor_availabilities", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "clinic_id"
    t.datetime "start"
    t.datetime "end"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_doctor_availabilities_on_clinic_id"
    t.index ["doctor_id"], name: "index_doctor_availabilities_on_doctor_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.integer  "regdno"
    t.string   "mobile"
    t.string   "email"
    t.string   "specialization"
    t.float    "rating"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "mobile"
    t.string   "email"
    t.string   "ssn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "slots", force: :cascade do |t|
    t.time     "start_time"
    t.time     "end_time"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
