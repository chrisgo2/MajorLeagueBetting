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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111117081436) do

  create_table "bet_links", :force => true do |t|
    t.string   "bet_type"
    t.integer  "bet_id"
    t.integer  "wager"
    t.boolean  "is_win"
    t.string   "wager_selection"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "football_game_stats", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "football_team_stats", :force => true do |t|
    t.integer  "winner_id"
    t.integer  "loser_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "game_bets_h2hs", :force => true do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.integer  "team_id"
    t.integer  "wager"
    t.boolean  "status"
    t.boolean  "won_or_lost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", :force => true do |t|
    t.integer  "league_id"
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.integer  "home_score"
    t.integer  "away_score"
    t.float    "spread"
    t.float    "spread_check"
    t.integer  "week"
    t.datetime "start_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "general_bets", :force => true do |t|
    t.string   "type"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "head2head_bets", :force => true do |t|
    t.string   "type"
    t.integer  "game_id"
    t.boolean  "is_spread"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "headlines", :force => true do |t|
    t.string   "title"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leagues", :force => true do |t|
    t.string   "name"
    t.string   "short_name"
    t.string   "sport"
    t.string   "logo_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "leagues", ["name"], :name => "index_leagues_on_name", :unique => true

  create_table "overunder_bets", :force => true do |t|
    t.string   "type"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", :force => true do |t|
    t.string "description"
    t.string "content_type"
    t.string "filename"
    t.binary "binary_data"
  end

  create_table "teams", :force => true do |t|
    t.integer  "league_id"
    t.string   "conference"
    t.string   "division"
    t.string   "name"
    t.string   "short_name"
    t.string   "logo_path"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "ties"
    t.integer  "home_wins"
    t.integer  "home_losses"
    t.integer  "road_wins"
    t.integer  "road_losses"
    t.integer  "div_wins"
    t.integer  "div_losses"
    t.integer  "conf_wins"
    t.integer  "conf_losses"
    t.integer  "points_for"
    t.integer  "points_against"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["name"], :name => "index_teams_on_name", :unique => true

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.integer  "money"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
