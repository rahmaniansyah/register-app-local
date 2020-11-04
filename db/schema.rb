# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_04_183216) do

  create_table "user", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "phone_number", limit: 15, null: false
    t.string "first_name", limit: 100, null: false
    t.string "last_name", limit: 100, null: false
    t.date "dob"
    t.string "gender", limit: 1
    t.string "email", limit: 100, null: false
    t.index ["email"], name: "email", unique: true
    t.index ["phone_number"], name: "phone_number", unique: true
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "phone_number", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.date "dob"
    t.string "gender"
    t.string "email", null: false
  end

end
