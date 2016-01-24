class UpdateDomainIndexes < ActiveRecord::Migration
  def change
    remove_index :domains, "cached_slug"
    add_index    :domains, "cached_slug", unique: true
  end
end
