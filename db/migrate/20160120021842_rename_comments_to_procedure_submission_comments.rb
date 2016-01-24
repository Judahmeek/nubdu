class RenameCommentsToProcedureSubmissionComments < ActiveRecord::Migration
  def change
    rename_table :comments, :procedure_submission_comments
  end
end
