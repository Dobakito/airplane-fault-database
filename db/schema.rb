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

ActiveRecord::Schema.define(version: 2021_06_25_233650) do

  create_table "faults", force: :cascade do |t|
    t.string "system_affected"
    t.string "severity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description"
    t.boolean "resolved"
  end

  create_table "mechanics", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "position"
    t.integer "years_experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plane_faults", force: :cascade do |t|
    t.integer "plane_id"
    t.integer "fault_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fault_id"], name: "index_plane_faults_on_fault_id"
    t.index ["plane_id"], name: "index_plane_faults_on_plane_id"
  end

  create_table "planes", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.integer "mechanic_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "flight_cycles"
    t.integer "years_old"
    t.index ["mechanic_id"], name: "index_planes_on_mechanic_id"
  end

end
