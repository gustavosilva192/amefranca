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

ActiveRecord::Schema.define(version: 2018_12_04_170333) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrators", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "remember_token"
    t.datetime "remember_token_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appwebexemps", force: :cascade do |t|
    t.string "nome"
    t.string "id_seq"
    t.text "endereco"
    t.decimal "preco"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "content"
    t.string "imagename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colab_salarios", force: :cascade do |t|
    t.string "name"
    t.string "estabelecimento"
    t.string "cargo"
    t.date "competencia"
    t.float "provento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proventos", force: :cascade do |t|
    t.string "name"
    t.string "estabelecimento"
    t.string "cargo"
    t.date "compotencia"
    t.float "provento"
  end

  create_table "remuneracaos", force: :cascade do |t|
    t.string "nome"
    t.string "estabelecimento"
    t.string "cargo"
    t.date "competencia"
    t.decimal "provento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competencia", "nome"], name: "index_remuneracaos_on_competencia_and_nome", unique: true
  end

  create_table "transps", force: :cascade do |t|
    t.string "nome"
    t.string "estab"
    t.string "cargo"
    t.date "competencia"
    t.decimal "provento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
