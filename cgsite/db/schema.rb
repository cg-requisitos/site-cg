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

ActiveRecord::Schema.define(version: 20170604170829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "livros", force: :cascade do |t|
    t.string "nome_autor"
    t.string "sobrenome_autor"
    t.integer "registro"
    t.string "titulo"
    t.string "cdu"
    t.string "idioma_livro"
    t.string "nome_serie"
    t.integer "volume_serie"
    t.string "editora"
    t.integer "ano"
    t.integer "edicao"
    t.integer "isbn"
    t.date "data_aquisicao"
    t.text "origem_aquisicao"
    t.boolean "classificacao_etaria"
    t.boolean "renovavel"
    t.text "link_download"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string "num_phone"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_phones_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "address"
    t.string "cpf"
    t.date "birthday"
    t.string "student_grade"
    t.string "student_shift"
    t.integer "user_type"
    t.boolean "account_status"
    t.string "lib_employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "phones", "users"
end
