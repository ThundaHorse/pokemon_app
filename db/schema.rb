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

ActiveRecord::Schema.define(version: 2019_09_05_180822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pokemons", force: :cascade do |t|
    t.integer "pokemon_id"
    t.text "name"
    t.integer "base_attack", default: 0
    t.integer "base_defense", default: 0
    t.integer "base_stamina", default: 0
    t.integer "candies_to_evolve"
    t.integer "distance_for_candy", default: 0
    t.integer "max_cp", default: 0
    t.float "attack_probability", default: 0.0
    t.float "base_capture_rate"
    t.float "base_flee_rate", default: 0.0
    t.float "dodge_probability"
    t.float "max_action_frequency", default: 0.0
    t.float "min_action_frequency", default: 0.0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "pokemon_type"
    t.boolean "shiny_egg", default: false
    t.boolean "shiny_evolution", default: false
    t.boolean "shiny_raid", default: false
    t.boolean "shiny_wild", default: false
    t.text "url"
  end

end
