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

ActiveRecord::Schema.define(version: 20180617133520) do

  create_table "disciplines", force: :cascade do |t|
    t.string "descricao"
    t.string "codigo"
    t.string "sigla"
    t.integer "cargaHoraria"
    t.integer "periodo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluations", force: :cascade do |t|
    t.integer "nota"
    t.string "comentario"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_evaluations_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.integer "team_id"
    t.date "inicio"
    t.date "fim"
    t.string "local"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "descricao"
    t.boolean "status", default: false
    t.integer "autor_id"
    t.index ["team_id"], name: "index_events_on_team_id"
  end

  create_table "events_people", id: false, force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "event_id", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "nome"
    t.string "matricula"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "perfil"
    t.integer "user_id"
    t.index ["user_id"], name: "index_people_on_user_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.integer "ano"
    t.integer "periodo"
    t.date "dataInicio"
    t.date "dataFim"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer "discipline_id"
    t.integer "semester_id"
    t.binary "editalAnexo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "monitor_id"
    t.index ["discipline_id"], name: "index_teams_on_discipline_id"
    t.index ["monitor_id"], name: "index_teams_on_monitor_id"
    t.index ["semester_id"], name: "index_teams_on_semester_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
