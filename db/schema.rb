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

ActiveRecord::Schema.define(version: 2020_11_17_015620) do

  create_table "account_plans", force: :cascade do |t|
    t.integer "balancetes_id", null: false
    t.integer "code"
    t.string "descrition"
    t.integer "group"
    t.integer "codeRed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["balancetes_id"], name: "index_account_plans_on_balancetes_id"
  end

  create_table "amostras", force: :cascade do |t|
    t.integer "balancetes_id", null: false
    t.string "indicePapel"
    t.string "resultAnalise"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["balancetes_id"], name: "index_amostras_on_balancetes_id"
  end

  create_table "auditors", force: :cascade do |t|
    t.integer "companies_id", null: false
    t.string "name"
    t.integer "crc"
    t.string "cvm"
    t.string "integer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["companies_id"], name: "index_auditors_on_companies_id"
  end

  create_table "balancetes", force: :cascade do |t|
    t.integer "companies_id", null: false
    t.string "descrition"
    t.float "valueDebit"
    t.float "valueCredit"
    t.integer "numDoc"
    t.integer "nunLan"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["companies_id"], name: "index_balancetes_on_companies_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.integer "cnpj"
    t.string "regimeTribut"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "crossings", force: :cascade do |t|
    t.integer "companies_id", null: false
    t.string "typeDeclaration"
    t.string "ocorrencia"
    t.string "warning"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["companies_id"], name: "index_crossings_on_companies_id"
  end

  add_foreign_key "account_plans", "balancetes", column: "balancetes_id"
  add_foreign_key "amostras", "balancetes", column: "balancetes_id"
  add_foreign_key "auditors", "companies", column: "companies_id"
  add_foreign_key "balancetes", "companies", column: "companies_id"
  add_foreign_key "crossings", "companies", column: "companies_id"
end
