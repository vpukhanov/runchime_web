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

ActiveRecord::Schema.define(version: 2022_01_27_163448) do

  create_table "scrobbles", force: :cascade do |t|
    t.datetime "uts"
    t.string "name"
    t.string "album"
    t.string "artist"
    t.string "image"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "workout_id", null: false
    t.index ["workout_id"], name: "index_scrobbles_on_workout_id"
  end

  create_table "workouts", id: :string, force: :cascade do |t|
    t.string "activity_type"
    t.datetime "start_uts"
    t.datetime "end_uts"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "scrobbles", "workouts"
end
