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

ActiveRecord::Schema.define(version: 20170506234823) do

  create_table "curriculums", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "edad"
    t.string   "sexo"
    t.string   "direccion"
    t.string   "codigo_postal"
    t.string   "ciudad"
    t.string   "email"
    t.string   "telefono"
    t.string   "celular"
    t.string   "especialidad"
    t.string   "grado_estudios"
    t.string   "herramientas_usadas"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "user_id"
    t.string   "estado"
    t.string   "experiencia_laboral"
    t.string   "institucion_educativa"
    t.text     "last_work_description"
    t.text     "personal_information"
    t.string   "last_work"
    t.datetime "date_appointment"
    t.datetime "time_appointment"
    t.integer  "recruit_id"
    t.boolean  "has_date",              default: false
    t.string   "interests"
    t.string   "personal_goals"
    t.string   "title"
    t.string   "graduates"
    t.index ["recruit_id"], name: "index_curriculums_on_recruit_id"
    t.index ["user_id"], name: "index_curriculums_on_user_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string   "state"
    t.string   "speciality"
    t.integer  "min_age"
    t.integer  "max_age"
    t.string   "sex"
    t.integer  "english_level"
    t.string   "grade"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "personal_references", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "time"
    t.integer  "curriculum_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["curriculum_id"], name: "index_personal_references_on_curriculum_id"
  end

  create_table "recruits", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name"
    t.string   "lastname"
    t.string   "phone"
    t.string   "key"
    t.boolean  "is_admin"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_recruits_on_email", unique: true
    t.index ["reset_password_token"], name: "index_recruits_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "name"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "lastname"
    t.boolean  "baja",                   default: false
    t.string   "description"
    t.integer  "status",                 default: 0
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
