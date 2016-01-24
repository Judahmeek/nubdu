class UpdateIndexes < ActiveRecord::Migration
  def change
    remove_index :behaviors, "cached_slug"
    add_index    :behaviors, "cached_slug", unique: true
    remove_index :components, "cached_slug"
    add_index    :components, "cached_slug", unique: true
    remove_index :concepts, "cached_slug"
    add_index    :concepts, "cached_slug", unique: true
    remove_index :procedures, "cached_slug"
    add_index    :procedures, "cached_slug", unique: true
    remove_index :systems, "cached_slug"
    add_index    :systems, "cached_slug", unique: true
    add_index    :users, "cached_slug", unique: true
    add_index    :users, "username", unique: true
  end
end
