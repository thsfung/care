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

ActiveRecord::Schema.define(version: 20170905021309) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctors", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "primaryaddress"
    t.string   "country"
    t.string   "province"
    t.string   "city"
    t.string   "postalcode"
    t.bigint   "workphone"
    t.integer  "extension"
    t.integer  "fax"
    t.string   "email"
    t.string   "specialization"
    t.string   "comments"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "icompanies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.date     "issuedate"
    t.float    "outstandingamt"
    t.integer  "patient_id"
    t.string   "comments"
    t.boolean  "marked"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "patient_doctors", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patient_staffs", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_patient_staffs_on_patient_id", using: :btree
    t.index ["staff_id"], name: "index_patient_staffs_on_staff_id", using: :btree
  end

  create_table "patients", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.date     "birthday"
    t.string   "sex"
    t.bigint   "homephone"
    t.bigint   "cellphone"
    t.bigint   "workphone"
    t.integer  "extension"
    t.string   "primaryaddress"
    t.string   "secondaryaddress"
    t.string   "country"
    t.string   "province"
    t.string   "city"
    t.string   "postalcode"
    t.string   "comments"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "payments", force: :cascade do |t|
    t.float    "amtdue"
    t.string   "type"
    t.float    "amtpaid"
    t.integer  "paymethod_id"
    t.integer  "invoice_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "paymethods", force: :cascade do |t|
    t.string   "company"
    t.string   "holdername"
    t.date     "holderbday"
    t.string   "relationshiptoclient"
    t.bigint   "adjustorphone"
    t.integer  "claimnumber"
    t.string   "adjustorname"
    t.integer  "branchnumber"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "services", force: :cascade do |t|
    t.float    "cost"
    t.string   "description"
    t.string   "type"
    t.boolean  "retire"
    t.integer  "visit_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "sinnumber"
    t.string   "primaryaddress"
    t.string   "secondaryaddress"
    t.string   "country"
    t.string   "province"
    t.string   "city"
    t.string   "postalcode"
    t.bigint   "homephone"
    t.bigint   "cellphone"
    t.string   "role"
    t.integer  "visit_id"
    t.integer  "patient_id"
    t.string   "comments"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "visits", force: :cascade do |t|
    t.date     "visitdate"
    t.integer  "patient_id"
    t.integer  "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "patient_staffs", "patients"
  add_foreign_key "patient_staffs", "staffs"
end
