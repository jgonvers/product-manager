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

ActiveRecord::Schema.define(version: 2021_04_26_171751) do

  create_table "articles", force: :cascade do |t|
    t.string "maker_reference", null: false
    t.integer "unit_buy_cost", null: false
    t.text "description", null: false
    t.string "short_description"
    t.boolean "contracted"
    t.boolean "obsolete"
    t.integer "new_article_id"
    t.integer "maker_id", null: false
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["maker_id"], name: "index_articles_on_maker_id"
    t.index ["new_article_id"], name: "index_articles_on_new_article_id"
  end

  create_table "client_articles", force: :cascade do |t|
    t.string "article_code", null: false
    t.integer "unit_sell_cost", null: false
    t.date "validity", null: false
    t.integer "article_id", null: false
    t.integer "client_id", null: false
    t.string "DDP"
    t.integer "unit_buy_cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_client_articles_on_article_id"
    t.index ["client_id"], name: "index_client_articles_on_client_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "makers", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "articles", "makers"
  add_foreign_key "articles", "new_articles"
  add_foreign_key "client_articles", "articles"
  add_foreign_key "client_articles", "clients"
end
