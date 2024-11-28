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

ActiveRecord::Schema[7.2].define(version: 2024_11_28_090024) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "category", ["Sedan", "SUV", "hatchback", "Convertible", "Coupe", "Crossover"]
  create_enum "fuel_type", ["Petrol", "Diesel", "CNG", "None"]
  create_enum "transmission", ["Manual", "Automatic", "CVT", "EV", "Triptonic", "AMT", "DCT", "Hybrid", "Hybrid-EV"]
  create_enum "type", ["Car", "Motorcycle", "Jeep", "Truck", "Bus", "Wagon"]

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.text "description"
    t.datetime "established_in"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_tables", force: :cascade do |t|
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name", null: false
    t.string "model", null: false
    t.string "color", null: false
    t.bigint "company_id", null: false
    t.datetime "registration_date", null: false
    t.datetime "registration_place", null: false
    t.json "images"
    t.string "engine", null: false
    t.enum "type", null: false, enum_type: "type"
    t.enum "category", null: false, enum_type: "category"
    t.enum "transmission", null: false, enum_type: "transmission"
    t.integer "seats", null: false
    t.enum "fuel_type", null: false, enum_type: "fuel_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_vehicles_on_company_id"
  end
end
