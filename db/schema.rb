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

ActiveRecord::Schema.define(version: 2021_11_22_053919) do

  create_table "compensations", force: :cascade do |t|
    t.string "natcalname"
    t.string "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "farmer_id"
    t.boolean "approved", default: true
    t.index ["farmer_id"], name: "index_compensations_on_farmer_id"
  end

  create_table "crops", force: :cascade do |t|
    t.string "surveyno"
    t.string "name"
    t.string "area"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "farmer_id"
    t.boolean "approved", default: true
    t.index ["farmer_id"], name: "index_crops_on_farmer_id"
  end

  create_table "farmers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_farmers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_farmers_on_reset_password_token", unique: true
  end

  create_table "fbasics", force: :cascade do |t|
    t.string "aadhar"
    t.string "name"
    t.string "dob"
    t.string "gender"
    t.string "address"
    t.string "pincode"
    t.string "mobno"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "farmer_id"
    t.index ["farmer_id"], name: "index_fbasics_on_farmer_id"
  end

  create_table "insurances", force: :cascade do |t|
    t.string "surveyno"
    t.string "cropname"
    t.string "amount"
    t.string "rate"
    t.string "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "farmer_id"
    t.boolean "approved", default: true
    t.index ["farmer_id"], name: "index_insurances_on_farmer_id"
  end

  create_table "lands", force: :cascade do |t|
    t.string "surveyno"
    t.string "area"
    t.string "village"
    t.string "agrioffice"
    t.string "district"
    t.string "ownershiptype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "farmer_id"
    t.boolean "approved", default: true
    t.index ["farmer_id"], name: "index_lands_on_farmer_id"
  end

  create_table "nat_calamities", force: :cascade do |t|
    t.string "name"
    t.string "nctype"
    t.string "month"
    t.string "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "obasics", force: :cascade do |t|
    t.integer "aadhar"
    t.string "name"
    t.string "dob"
    t.string "gender"
    t.string "address"
    t.integer "pincode"
    t.integer "mob_no"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "officer_id"
    t.index ["officer_id"], name: "index_obasics_on_officer_id"
  end

  create_table "officers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_officers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_officers_on_reset_password_token", unique: true
  end

  create_table "subsidies", force: :cascade do |t|
    t.string "surveyno"
    t.string "cropname"
    t.string "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "farmer_id"
    t.boolean "approved", default: true
    t.index ["farmer_id"], name: "index_subsidies_on_farmer_id"
  end

end
