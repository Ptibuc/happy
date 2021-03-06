# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160704122240) do

  create_table "caracteristiques", force: :cascade do |t|
    t.string   "name"
    t.integer  "schema_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "caracteristiques", ["schema_id"], name: "index_caracteristiques_on_schema_id"

  create_table "comptes", force: :cascade do |t|
    t.string   "name"
    t.string   "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phrases", force: :cascade do |t|
    t.string   "condition"
    t.text     "libelle"
    t.integer  "caracteristique_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "phrases", ["caracteristique_id"], name: "index_phrases_on_caracteristique_id"

  create_table "schemas", force: :cascade do |t|
    t.string   "name"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "schemas", ["site_id"], name: "index_schemas_on_site_id"

  create_table "sites", force: :cascade do |t|
    t.string   "url"
    t.string   "key"
    t.integer  "compte_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sites", ["compte_id"], name: "index_sites_on_compte_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.integer  "compte_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "users", ["compte_id"], name: "index_users_on_compte_id"

end
