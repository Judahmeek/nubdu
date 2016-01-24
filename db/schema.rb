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

ActiveRecord::Schema.define(version: 20160124081022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "behaviors", force: :cascade do |t|
    t.string   "title",        null: false
    t.string   "cached_slug",  null: false
    t.string   "desc",         null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "version_id"
    t.integer  "component_id"
  end

  add_index "behaviors", ["cached_slug"], name: "index_behaviors_on_cached_slug", unique: true, using: :btree
  add_index "behaviors", ["component_id"], name: "index_behaviors_on_component_id", using: :btree
  add_index "behaviors", ["version_id"], name: "index_behaviors_on_version_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.integer  "domain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "system_id"
  end

  add_index "categories", ["domain_id"], name: "index_categories_on_domain_id", using: :btree
  add_index "categories", ["system_id"], name: "index_categories_on_system_id", using: :btree

  create_table "components", force: :cascade do |t|
    t.string   "title",        null: false
    t.string   "cached_slug",  null: false
    t.string   "desc",         null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "version_id"
    t.integer  "component_id"
  end

  add_index "components", ["cached_slug"], name: "index_components_on_cached_slug", unique: true, using: :btree
  add_index "components", ["component_id"], name: "index_components_on_component_id", using: :btree
  add_index "components", ["version_id"], name: "index_components_on_version_id", using: :btree

  create_table "concepts", force: :cascade do |t|
    t.string   "title",        null: false
    t.string   "cached_slug",  null: false
    t.string   "desc",         null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "version_id"
    t.integer  "component_id"
  end

  add_index "concepts", ["cached_slug"], name: "index_concepts_on_cached_slug", unique: true, using: :btree
  add_index "concepts", ["component_id"], name: "index_concepts_on_component_id", using: :btree
  add_index "concepts", ["version_id"], name: "index_concepts_on_version_id", using: :btree

  create_table "domain_categories", force: :cascade do |t|
    t.string   "title",      null: false
    t.integer  "domain_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "domain_categories", ["domain_id"], name: "index_domain_categories_on_domain_id", using: :btree

  create_table "domains", force: :cascade do |t|
    t.string   "title",              null: false
    t.string   "cached_slug",        null: false
    t.string   "desc",               null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "domain_category_id"
  end

  add_index "domains", ["cached_slug"], name: "index_domains_on_cached_slug", unique: true, using: :btree
  add_index "domains", ["domain_category_id"], name: "index_domains_on_domain_category_id", using: :btree

  create_table "procedure_submission_comments", force: :cascade do |t|
    t.string   "content",                 null: false
    t.integer  "rep",                     null: false
    t.integer  "procedure_submission_id", null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "user_id",                 null: false
  end

  add_index "procedure_submission_comments", ["procedure_submission_id"], name: "index_procedure_submission_comments_on_procedure_submission_id", using: :btree
  add_index "procedure_submission_comments", ["user_id"], name: "index_procedure_submission_comments_on_user_id", using: :btree

  create_table "procedure_submissions", force: :cascade do |t|
    t.string   "content",      null: false
    t.integer  "rep",          null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id",      null: false
    t.integer  "procedure_id", null: false
  end

  add_index "procedure_submissions", ["procedure_id"], name: "index_procedure_submissions_on_procedure_id", using: :btree
  add_index "procedure_submissions", ["user_id"], name: "index_procedure_submissions_on_user_id", using: :btree

  create_table "procedures", force: :cascade do |t|
    t.string   "title",       null: false
    t.string   "cached_slug", null: false
    t.string   "desc",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "procedures", ["cached_slug"], name: "index_procedures_on_cached_slug", unique: true, using: :btree

  create_table "scopes", force: :cascade do |t|
    t.string   "title",       null: false
    t.string   "cached_slug", null: false
    t.string   "desc",        null: false
    t.integer  "concept_id",  null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "scopes", ["concept_id"], name: "index_scopes_on_concept_id", using: :btree

  create_table "systems", force: :cascade do |t|
    t.string   "title",              null: false
    t.string   "cached_slug",        null: false
    t.string   "desc",               null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "domain_category_id"
  end

  add_index "systems", ["cached_slug"], name: "index_systems_on_cached_slug", unique: true, using: :btree
  add_index "systems", ["domain_category_id"], name: "index_systems_on_domain_category_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username",                            null: false
    t.string   "cached_slug",                         null: false
    t.integer  "reputation",                          null: false
  end

  add_index "users", ["cached_slug"], name: "index_users_on_cached_slug", unique: true, using: :btree
  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "versions", force: :cascade do |t|
    t.string   "title",      null: false
    t.integer  "system_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "versions", ["system_id"], name: "index_versions_on_system_id", using: :btree

  add_foreign_key "behaviors", "components"
  add_foreign_key "behaviors", "versions"
  add_foreign_key "components", "versions"
  add_foreign_key "concepts", "versions"
  add_foreign_key "domain_categories", "domains"
  add_foreign_key "domains", "domain_categories"
  add_foreign_key "procedure_submission_comments", "procedure_submissions"
  add_foreign_key "procedure_submission_comments", "users"
  add_foreign_key "procedure_submissions", "procedures"
  add_foreign_key "procedure_submissions", "users"
  add_foreign_key "scopes", "concepts"
  add_foreign_key "systems", "domain_categories"
  add_foreign_key "versions", "systems"
end
