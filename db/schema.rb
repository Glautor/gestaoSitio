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

ActiveRecord::Schema.define(version: 20190606021540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.float "hectares"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cashier_follows", force: :cascade do |t|
    t.bigint "cashier_id"
    t.float "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cashier_id"], name: "index_cashier_follows_on_cashier_id"
  end

  create_table "cashiers", force: :cascade do |t|
    t.date "data_do_movimento"
    t.float "lancamento"
    t.string "conta_contabil"
    t.string "numero_do_documento"
    t.string "tipo_do_documento"
    t.string "descricao"
    t.float "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planting_cultures", force: :cascade do |t|
    t.string "name"
    t.string "tempo_estimado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_orders", force: :cascade do |t|
    t.string "name"
    t.string "requisitor"
    t.date "data_prevista_de_abertura"
    t.date "data_prevista_de_finalizacao"
    t.bigint "area_id"
    t.bigint "planting_culture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_service_orders_on_area_id"
    t.index ["planting_culture_id"], name: "index_service_orders_on_planting_culture_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.bigint "worker_id"
    t.string "hora_inicial"
    t.string "hora_final"
    t.float "custo_do_servico"
    t.bigint "service_order_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_order_id"], name: "index_services_on_service_order_id"
    t.index ["worker_id"], name: "index_services_on_worker_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workers", force: :cascade do |t|
    t.string "name"
    t.float "salario"
    t.integer "horas_por_dia"
    t.string "titulo_do_trabalho"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cashier_follows", "cashiers"
  add_foreign_key "service_orders", "areas"
  add_foreign_key "service_orders", "planting_cultures"
  add_foreign_key "services", "service_orders"
  add_foreign_key "services", "workers"
end
