class CreateScopes < ActiveRecord::Migration
  def change
    create_table :scopes do |t|
      t.string   "title",        null: false
      t.string   "cached_slug",  null: false
      t.string   "desc",         null: false
      t.integer  "concept_id",   null: false
      t.index       :concept_id
      t.foreign_key :concepts
      t.timestamps null: false
    end
  end
end
