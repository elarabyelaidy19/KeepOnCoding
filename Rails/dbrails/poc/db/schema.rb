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

ActiveRecord::Schema[7.1].define(version: 2024_02_02_130603) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.bigint "region_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.geography "latlon", limit: {:srid=>4326, :type=>"st_point", :geographic=>true}
    t.index ["region_id"], name: "index_locations_on_region_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.bigint "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "salary"
    t.bigint "manager_id"
    t.bigint "location_id"
    t.index ["location_id"], name: "index_people_on_location_id"
    t.index ["manager_id"], name: "index_people_on_manager_id"
    t.index ["role_id"], name: "index_people_on_role_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "billable"
  end

  add_foreign_key "locations", "regions"
  add_foreign_key "people", "locations"
  add_foreign_key "people", "people", column: "manager_id"
  add_foreign_key "people", "roles"
end
