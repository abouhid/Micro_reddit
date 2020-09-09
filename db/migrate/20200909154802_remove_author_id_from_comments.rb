class RemoveAuthorIdFromComments < ActiveRecord::Migration[6.0]
  def change
    remove_reference :comments, :author, null: false, foreign_key: true
  end
end
