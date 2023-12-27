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

ActiveRecord::Schema[7.1].define(version: 2023_12_26_013759) do
  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "critic_score"
    t.string "description"
    t.string "esrb_rating"
    t.datetime "release_date"
    t.string "title"
    t.integer "user_score"
    t.integer "length"
    t.boolean "completed"
    t.boolean "blind"
    t.integer "votes_to_pass"
    t.integer "has_votes"
    t.string "genres"
    t.datetime "completion_date"
    t.datetime "start_date"
    t.string "status"
    t.string "review"
    t.float "custom_multi"
  end

end
