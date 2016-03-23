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

ActiveRecord::Schema.define(version: 20160318022245) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bounties", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.integer  "rep"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bounties", ["user_id"], name: "index_bounties_on_user_id", using: :btree

  create_table "bounty_tags", force: :cascade do |t|
    t.integer  "bounty_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bounty_tags", ["bounty_id"], name: "index_bounty_tags_on_bounty_id", using: :btree
  add_index "bounty_tags", ["tag_id"], name: "index_bounty_tags_on_tag_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "content",                   null: false
    t.integer  "rep",           default: 0, null: false
    t.integer  "submission_id",             null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id",                   null: false
  end

  add_index "comments", ["submission_id"], name: "index_comments_on_submission_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

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

  create_table "domains", force: :cascade do |t|
    t.string   "title",       null: false
    t.string   "cached_slug", null: false
    t.string   "desc",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "parent_id"
    t.string   "breadcrumbs"
  end

  add_index "domains", ["cached_slug"], name: "index_domains_on_cached_slug", unique: true, using: :btree
  add_index "domains", ["parent_id"], name: "index_domains_on_parent_id", using: :btree

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

  create_table "submissions", force: :cascade do |t|
    t.string   "content",                  null: false
    t.integer  "rep",          default: 0, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",                  null: false
    t.integer  "procedure_id",             null: false
  end

  add_index "submissions", ["procedure_id"], name: "index_submissions_on_procedure_id", using: :btree
  add_index "submissions", ["user_id"], name: "index_submissions_on_user_id", using: :btree

  create_table "systems", force: :cascade do |t|
    t.string   "title",       null: false
    t.string   "cached_slug", null: false
    t.string   "desc",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "systems", ["cached_slug"], name: "index_systems_on_cached_slug", unique: true, using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.integer  "rep",                    default: 0,  null: false
    t.integer  "role",                   default: 0,  null: false
  end

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

  create_table "votes", force: :cascade do |t|
    t.integer  "user_id",       null: false
    t.integer  "wiki_edit_id"
    t.integer  "submission_id"
    t.integer  "comment_id"
    t.boolean  "is_upvote"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "votes", ["comment_id"], name: "index_votes_on_comment_id", unique: true, using: :btree
  add_index "votes", ["submission_id"], name: "index_votes_on_submission_id", unique: true, using: :btree
  add_index "votes", ["user_id"], name: "index_votes_on_user_id", using: :btree
  add_index "votes", ["wiki_edit_id"], name: "index_votes_on_wiki_edit_id", unique: true, using: :btree

  create_table "wiki_edits", force: :cascade do |t|
    t.integer  "concept_id"
    t.integer  "start_index"
    t.integer  "end_index"
    t.integer  "user_id"
    t.string   "content"
    t.integer  "rep",         default: 0
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "wiki_edits", ["concept_id"], name: "index_wiki_edits_on_concept_id", using: :btree
  add_index "wiki_edits", ["user_id"], name: "index_wiki_edits_on_user_id", using: :btree

  add_foreign_key "bounties", "users", on_delete: :cascade
  add_foreign_key "bounty_tags", "bounties", on_delete: :cascade
  add_foreign_key "bounty_tags", "tags", on_delete: :cascade
  add_foreign_key "comments", "submissions", on_delete: :cascade
  add_foreign_key "comments", "users", on_delete: :cascade
  add_foreign_key "components", "versions", on_delete: :cascade
  add_foreign_key "concepts", "versions", on_delete: :cascade
  add_foreign_key "domains", "domains", column: "parent_id", on_delete: :cascade
  add_foreign_key "scopes", "concepts", on_delete: :cascade
  add_foreign_key "submissions", "procedures", on_delete: :cascade
  add_foreign_key "submissions", "users", on_delete: :cascade
  add_foreign_key "versions", "systems", on_delete: :cascade
  add_foreign_key "votes", "comments", on_delete: :cascade
  add_foreign_key "votes", "submissions", on_delete: :cascade
  add_foreign_key "votes", "wiki_edits", on_delete: :cascade
  add_foreign_key "wiki_edits", "concepts", on_delete: :cascade
end
