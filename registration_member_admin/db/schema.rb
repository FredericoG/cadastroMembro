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

ActiveRecord::Schema.define(version: 20170801004519) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer "codeAddress"
    t.integer "codeNeighborhood"
    t.string "addressZipCode", limit: 100
    t.string "addressStreet", limit: 100
    t.string "addressAdd", limit: 100
    t.integer "neighborhood_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "booleans", force: :cascade do |t|
    t.integer "code"
    t.string "description", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.integer "codeCity"
    t.integer "codeUf"
    t.string "descriptionCity", limit: 100
    t.string "cityZipCode", limit: 10
    t.integer "uf_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "iso", limit: 100
    t.string "iso3", limit: 100
    t.integer "codeNum"
    t.string "name", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "member_register_export_errors", force: :cascade do |t|
    t.string "field", limit: 100
    t.string "error", limit: 255
    t.integer "line"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "member_registraitons", force: :cascade do |t|
    t.integer "code"
    t.string "name", limit: 100
    t.string "email", limit: 50
    t.date "birth"
    t.decimal "cpf"
    t.string "rg", limit: 30
    t.integer "maritalStatus"
    t.date "weddingDate"
    t.string "spouge", limit: 100
    t.string "fatherName", limit: 100
    t.string "motherName", limit: 100
    t.integer "profession_id"
    t.integer "phone_id"
    t.text "image"
    t.integer "baptized"
    t.date "baptizedDate"
    t.integer "son_id"
    t.integer "sex"
    t.integer "maritalCode"
    t.integer "member"
    t.integer "evangelical"
    t.integer "street_id"
    t.string "note", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_member_registraitons_on_code"
    t.index ["cpf"], name: "index_member_registraitons_on_cpf", unique: true
    t.index ["email"], name: "index_member_registraitons_on_email", unique: true
    t.index ["rg"], name: "index_member_registraitons_on_rg", unique: true
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.integer "codeNeighborhood"
    t.integer "codeCity"
    t.string "descriptionNeighborhood", limit: 100
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pays", force: :cascade do |t|
    t.integer "payCode"
    t.string "payDescription", limit: 100
    t.decimal "totalAmountPay", precision: 8, scale: 2
    t.decimal "decimal", precision: 8, scale: 2
    t.datetime "dueDate"
    t.string "download", limit: 100
    t.string "card", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phone_types", force: :cascade do |t|
    t.string "description", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.integer "ddd"
    t.integer "phone"
    t.string "contact", limit: 100
    t.integer "phoneType_id"
    t.integer "phoneOption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ddd", "phone"], name: "index_phones_on_ddd_and_phone", unique: true
  end

  create_table "professions", force: :cascade do |t|
    t.integer "code"
    t.string "profession", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sons", force: :cascade do |t|
    t.integer "code"
    t.string "sonName", limit: 100
    t.date "birthDate"
    t.integer "memberCod"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spents", force: :cascade do |t|
    t.integer "spentCode"
    t.string "spentDescription", limit: 100
    t.integer "month"
    t.datetime "time"
    t.decimal "totalAmountSpent", precision: 8, scale: 2
    t.decimal "decimal", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "streets", force: :cascade do |t|
    t.integer "neighborhood_id"
    t.integer "city_id"
    t.integer "uf_id"
    t.string "add", limit: 100
    t.string "number", limit: 100
    t.integer "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ufs", force: :cascade do |t|
    t.integer "codeUf"
    t.string "acronymUf", limit: 3
    t.string "descriptionUf", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
