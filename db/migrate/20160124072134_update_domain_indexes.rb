class UpdateDomainIndexes < ActiveRecord::Migration
  def change
    remove_index :domains, column: "cached_slug"
    add_index    :domains, column: "cached_slug", unique: true
  end
end
