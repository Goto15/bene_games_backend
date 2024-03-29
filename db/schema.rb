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

ActiveRecord::Schema[7.1].define(version: 2024_01_24_202608) do
  create_table "api_informations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "access_token"
    t.string "refresh_token"
    t.string "token_name"
    t.string "token_type"
    t.string "scope"
    t.integer "expires_in"
  end

  create_table "game_requests", force: :cascade do |t|
    t.string "requested_game"
    t.string "requester"
    t.string "reward_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "genres", force: :cascade do |t|
    t.string "genre"
    t.float "multiplier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre"], name: "index_genres_on_genre", unique: true
  end

  create_table "rewards", force: :cascade do |t|
    t.string "name"
    t.string "custom_reward_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
