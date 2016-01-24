class DropSubmissions < ActiveRecord::Migration
  def change
  remove_index :submissions, :procedure_id
  remove_index :submissions, :user_id
  drop_table :submissions
  end
end
