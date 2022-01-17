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

ActiveRecord::Schema.define(version: 2022_01_14_122910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartments", force: :cascade do |t|
    t.integer "number"
    t.text "observation"
    t.bigint "parking_spaces_id"
    t.index ["parking_spaces_id"], name: "index_apartments_on_parking_spaces_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "person_id"
    t.bigint "apartment_id"
    t.bigint "parking_space_id"
    t.index ["apartment_id"], name: "index_events_on_apartment_id"
    t.index ["parking_space_id"], name: "index_events_on_parking_space_id"
    t.index ["person_id"], name: "index_events_on_person_id"
  end

  create_table "parking_spaces", force: :cascade do |t|
    t.integer "number"
    t.text "observation"
  end

  create_table "people", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "gender"
    t.integer "age"
    t.string "phone_1"
    t.string "phone_2"
    t.string "whatsapp"
    t.string "social_network_1"
    t.string "social_network_2"
    t.string "email"
    t.string "address"
    t.string "bank_account"
    t.string "document_1"
    t.string "document_2"
    t.string "profession"
    t.string "real_estate"
    t.string "real_estate_contact"
    t.text "observation"
    t.bigint "apartment_id"
    t.bigint "vehicle_id"
    t.index ["apartment_id"], name: "index_people_on_apartment_id"
    t.index ["vehicle_id"], name: "index_people_on_vehicle_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "type"
    t.string "brand"
    t.string "model"
    t.string "color"
    t.text "observation"
    t.bigint "parking_spaces_id"
    t.bigint "apartment_id"
    t.index ["apartment_id"], name: "index_vehicles_on_apartment_id"
    t.index ["parking_spaces_id"], name: "index_vehicles_on_parking_spaces_id"
  end

  add_foreign_key "apartments", "parking_spaces", column: "parking_spaces_id"
  add_foreign_key "events", "apartments"
  add_foreign_key "events", "parking_spaces"
  add_foreign_key "events", "people"
  add_foreign_key "people", "apartments"
  add_foreign_key "people", "vehicles"
  add_foreign_key "vehicles", "apartments"
  add_foreign_key "vehicles", "parking_spaces", column: "parking_spaces_id"
end
