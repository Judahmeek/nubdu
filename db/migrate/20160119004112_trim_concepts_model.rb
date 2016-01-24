class TrimConceptsModel < ActiveRecord::Migration
  def change
    remove_foreign_key :concepts, :concepts
    remove_index :concepts, :concept_id
    remove_column :concepts, :concept_id, :integer
  end
end
