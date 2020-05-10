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

ActiveRecord::Schema.define(version: 2020_05_10_212932) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.string "email"
    t.boolean "substitutions", default: true
    t.text "aisle_five_snacks_and_pop"
    t.text "bakery"
    t.text "aisle_one_canned_non_perishables"
    t.text "dairy"
    t.text "aisle_three_baking_personal_paper_products"
    t.text "freezer"
    t.text "meat"
    t.text "produce"
    t.text "aisle_four_household_products"
    t.text "aisle_two_soups_cereal_ethnic_hot_beverages"
    t.text "other_medicine_etc"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "area_code"
    t.string "phone_number"
    t.string "service_type"
    t.date "service_date"
    t.time "desired_pick_up_time"
    t.string "payment_method"
  end

end
