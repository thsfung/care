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

ActiveRecord::Schema.define(version: 20170524195204) do

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
    t.integer  "workphone"
    t.integer  "extension"
    t.integer  "fax"
    t.string   "email"
    t.string   "type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "ehis", force: :cascade do |t|
    t.string   "company"
    t.string   "holdername"
    t.date     "holderbday"
    t.string   "relationshiptoclient"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "icompanies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insurances", force: :cascade do |t|
    t.integer  "policynumber"
    t.string   "type"
    t.date     "dateofloss"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.date     "issuedate"
    t.float    "outstandingamt"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "mvas", force: :cascade do |t|
    t.string   "holdername"
    t.date     "holderbday"
    t.integer  "adjustorphone"
    t.integer  "claimnumber"
    t.string   "relationshiptoclient"
    t.string   "adjustorname"
    t.integer  "branchnumber"
    t.string   "company"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.date     "birthday"
    t.string   "sex"
    t.integer  "homephone"
    t.integer  "cellphone"
    t.string   "workphone"
    t.integer  "extension"
    t.string   "primaryaddress"
    t.string   "secondaryaddress"
    t.string   "country"
    t.string   "province"
    t.string   "city"
    t.string   "postalcode"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "amtdue"
    t.string   "type"
    t.integer  "amtpaid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.float    "cost"
    t.string   "description"
    t.string   "type"
    t.boolean  "retire"
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
    t.integer  "homephone"
    t.integer  "cellphone"
    t.string   "type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "visits", force: :cascade do |t|
    t.date     "visitdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
