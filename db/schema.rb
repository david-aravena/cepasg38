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

ActiveRecord::Schema.define(version: 2021_03_13_224717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cepas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vino_cepas", force: :cascade do |t|
    t.bigint "cepa_id"
    t.bigint "vino_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "porcentaje"
    t.index ["cepa_id"], name: "index_vino_cepas_on_cepa_id"
    t.index ["vino_id"], name: "index_vino_cepas_on_vino_id"
  end

  create_table "vinos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "vino_cepas", "cepas"
  add_foreign_key "vino_cepas", "vinos"
end
